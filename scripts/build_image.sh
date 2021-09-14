#!/bin/bash
# Copyright (c) 2014-2018 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.
# Copyright (c) 2020 Patrick Rein

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

DEPLOY_PATH="deploy"
BUILD_DIR=.
SMALLTALK_VERSION="trunk"
VM=$SMALLTALK_CI_VM
# ==============================================================================

# Set paths and files
# ==============================================================================
DEPLOY_IMAGE="Babylonian-${SMALLTALK_VERSION}.image"
DEPLOY_CHANGES="Babylonian-${SMALLTALK_VERSION}.changes"
DEPLOY_PACKAGE="Babylonian-${SMALLTALK_VERSION}.zip"
COG_VM_PARAM="-nosound -nodisplay"
# ==============================================================================

mkdir -p "${DEPLOY_PATH}" 
cd "${DEPLOY_PATH}"

print_info "Downloading Squeak-trunk image..."
#wget http://files.squeak.org/5.3rc3/Squeak5.3rc3-19428-64bit/Squeak5.3rc3-19428-64bit-202002240037-Linux.zip
#unzip Squeak5.3rc3-19428-64bit-202002240037-Linux.zip
#mv Squeak5.3rc3-19428-64bit-202002240037-Linux Squeak5.3

wget http://files.squeak.org/6.0alpha/Squeak6.0alpha-19999-64bit/Squeak6.0alpha-19999-64bit-202003021730-Linux.zip
unzip Squeak6.0alpha-19999-64bit-202003021730-Linux.zip
mv Squeak6.0alpha-19999-64bit-202003021730-Linux Squeak-trunk

mv Squeak-trunk/shared/*.image "${DEPLOY_IMAGE}"
mv Squeak-trunk/shared/*.changes "${DEPLOY_CHANGES}"
mv Squeak-trunk/shared/SqueakV50.sources .

print_info "Preparing image..."
EXIT_STATUS=0
Squeak-trunk/bin/squeak $COG_VM_PARAM "${DEPLOY_IMAGE}" "../scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    zip "${DEPLOY_PACKAGE}" *.image *.changes *.sources
else
    print_info "Preparation of image file failed."
fi

exit $EXIT_STATUS
