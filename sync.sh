bash -c 'find . -type f -not -path "*/target/*" -name 'zanata.xml' \  -execdir echo "=== Commiting new translation $BUILD_TAG...\n" \; \
  -execdir pwd \; \
  -execdir ls \; \
  -execdir echo '=== Git add...\n' \; \
  -execdir git add . \; \
  -execdir echo '=== Git commit ...\n' \; \
  -execdir git commit -m "$BUILD_TAG" \; \
  -execdir echo "=== Finished commit preparation - $BUILD_TAG.\n" \;'
