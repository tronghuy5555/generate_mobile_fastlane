#!/bin/bash
# source ../common.sh

gen_fastlane_ios() {
    sourcePath=$1
    iosPath=$2
    result=$(checkPath $iosPath)
    if [[ result ]]; then
        fastlanePath="$iosPath/fastlane"
        create_folder_if_not_exists $fastlanePath
        copy_file_if_not_exists "$sourcePath/.env" "$fastlanePath/.env"
        copy_file_if_not_exists "$sourcePath/Fastfile" "$fastlanePath/Fastfile"
        copy_file_if_not_exists "$sourcePath/Matchfile" "$fastlanePath/Matchfile"
    fi
}