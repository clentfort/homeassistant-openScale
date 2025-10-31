#!/bin/bash

set -e

TEMP_DIR="temp_files"

mkdir $TEMP_DIR

# Move the files and directories to keep to the temp directory
mkdir -p $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core
mv android_app/app/src/main/java/com/health/openscale/core/bluetooth $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core/
mv android_app/app/src/main/java/com/health/openscale/core/bodymetric $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core/
mv android_app/app/src/main/java/com/health/openscale/core/database $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core/
mv android_app/app/src/main/java/com/health/openscale/core/datatypes $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core/
mv android_app/app/src/main/java/com/health/openscale/core/utils $TEMP_DIR/android_app/app/src/main/java/com/health/openscale/core/

mkdir -p $TEMP_DIR/android_app/app/src/test/java/com/health/openscale
mv android_app/app/src/test/java/com/health/openscale/BluetoothGattUuidTest.java $TEMP_DIR/android_app/app/src/test/java/com/health/openscale/
mv android_app/app/src/test/java/com/health/openscale/ConvertersTest.java $TEMP_DIR/android_app/app/src/test/java/com/health/openscale/
mv android_app/app/src/test/java/com/health/openscale/CsvHelperTest.java $TEMP_DIR/android_app/app/src/test/java/com/health/openscale/
mv android_app/app/src/test/java/com/health/openscale/DateTimeHelpersTest.java $TEMP_DIR/android_app/app/src/test/java/com/health/openscale/
mv android_app/app/src/test/java/com/health/openscale/MeasurementTest.java $TEMP_DIR/android_app/app/src/test/java/com/health/openscale/

mkdir -p $TEMP_DIR/android_app/app/src/androidTest/java/com/health/openscale
mv android_app/app/src/androidTest/java/com/health/openscale/DatabaseMigrationTest.java $TEMP_DIR/android_app/app/src/androidTest/java/com/health/openscale/
mv android_app/app/src/androidTest/java/com/health/openscale/DatabaseTest.java $TEMP_DIR/android_app/app/src/androidTest/java/com/health/openscale/
mv android_app/app/src/androidTest/java/com/health/openscale/TrisaBodyAnalyzeLibTest.java $TEMP_DIR/android_app/app/src/androidTest/java/com/health/openscale/

mv LICENSE $TEMP_DIR/

# Delete everything else
find . -maxdepth 1 ! -name $TEMP_DIR ! -name '.git' ! -name '.github' ! -name '.' -exec rm -rf {} +

# Move the kept files back
mv $TEMP_DIR/* .

# Remove the temp directory
rm -rf $TEMP_DIR
