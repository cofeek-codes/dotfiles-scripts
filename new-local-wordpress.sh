#!/bin/bash

set -e

FOLDER_NAME="wordpress"

ARCHAIVE_NAME="${FOLDER_NAME}.tar.gz"

WP_DOWNLOAD_LINK="https://ru.wordpress.org/latest-ru_RU.tar.gz"


cd /opt/lampp/htdocs

wget -O $ARCHAIVE_NAME $WP_DOWNLOAD_LINK


if [ -n "$1" ]; then
    tar -xf $ARCHAIVE_NAME
    mv $FOLDER_NAME $1
else
    tar -xf $ARCHAIVE_NAME

fi

# cleanup

rm -rf $ARCHAIVE_NAME
