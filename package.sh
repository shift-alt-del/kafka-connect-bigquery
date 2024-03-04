PACKAGE_ROOT="packages/wepay-kafka-connect-bigquery-x"
PACKAGE_LIB_PATH="$PACKAGE_ROOT/lib"
PACKAGE_DOC_PATH="$PACKAGE_ROOT/doc"

rm -rf $PACKAGE_ROOT

# build the package
mvn clean package -DskipTests

# create the package directory
mkdir -p $PACKAGE_LIB_PATH
mkdir -p $PACKAGE_DOC_PATH
cp kcbq-connector/target/manifest.json $PACKAGE_ROOT
cp kcbq-connector/target/components/packages/wepay-kafka-connect-bigquery-*/wepay-kafka-connect-bigquery-*/lib/*.jar $PACKAGE_LIB_PATH
cp README.md $PACKAGE_DOC_PATH
cp LICENSE.md $PACKAGE_DOC_PATH
