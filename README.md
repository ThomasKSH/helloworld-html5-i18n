Helloworld HTML5 I18N QUICKSTART
===================
Yu Shao



helloworld-html5: HTML5 and REST Hello World Info

https://github.com/xcoulon/wildfly-quickstart/tree/master/helloworld-html5


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
  -execdir echo "=== Commiting new translation...\n" \; \
  -execdir pwd \; \
  -execdir ls \; \
  -execdir echo "=== Git add...\n" \; \
  -execdir git add . \; \
  -execdir echo "=== Git commit ...\n" \; \
  -execdir git commit -m "$BUILD_TAG" \; \
  -execdir echo "=== Finished commit prepration.\n" \; \

