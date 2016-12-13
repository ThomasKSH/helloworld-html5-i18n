whoami
printenv
mvn clean
find . -type f -name 'zanata.xml' \
  -execdir pwd \; \
  -execdir ls \; \
  -execdir echo "Running zanata-cli -B stats\n" \; \
  -execdir zanata-cli -B stats \; \
  -execdir echo "Running zanata-cli -B push\n" \; \
  -execdir zanata-cli -B push \; \
  -execdir echo "Running zanata-cli -B pull\n" \; \
  -execdir zanata-cli -B pull \;
cd $WORKSPACE
mvn package
find . -type f -not -path "./target/*" -name 'zanata.xml' \
  -execdir echo "Commiting new translation...\n" \; \
  -execdir pwd \; \
  -execdir ls \; \
  -execdir echo "Git add...\n" \; \
  -execdir git add . \; \
  -execdir echo "Git commit ...\n" \; \
  -execdir git commit -m "$BUILD_TAG" \; \
  -execdir echo "Git push...\n" \; \
  -execdir git push \;
