#!/bin/bash
# source ../common.sh

gen_fastlane_android() {
    sourcePath=$1
    androidPath=$2
    result=$(checkPath $androidPath)
    if [[ result ]]; then
        fastlanePath="$androidPath/fastlane"
        create_folder_if_not_exists $fastlanePath
        copy_file_if_not_exists "$sourcePath/.env" "$fastlanePath/.env"
        copy_file_if_not_exists "$sourcePath/Fastfile" "$fastlanePath/Fastfile"
    fi
}