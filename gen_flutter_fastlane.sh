#!/bin/bash

source common.sh
source android/gen_fastlane.sh
source ios/gen_fastlane.sh

# Check if the fastlane executable exists in the PATH
if command -v fastlane &> /dev/null; then
    # If found, display a message indicating fastlane is installed
    echo "fastlane is installed."
    
    # Optionally, display the version of fastlane
    fastlane --version
    read -p "Enter your flutter project path: " path
    path=${path//\'/}
    resultProjectPath=$(checkPath $path)

    if [[ resuresultProjectPathlt ]]; then
        echo "Welcome project path: $path !!!!!!"
        echo "Source path: $sourcePath !!!!!!!"
        echo "Staring gen ios --- $PWD"
        gen_fastlane_ios "$PWD/ios" "$path/ios"
        echo "Staring gen android --- $PWD"
        gen_fastlane_android "$PWD/android" "$path/android"
    fi
    
    # cd $path
    # cd ios
    # command sh ios/gen_fastlane.sh
else
    # If not found, display a message indicating fastlane is not installed
    echo "fastlane is not installed."
fi