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
SMALLTALK_VERSION="5.3"
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

print_info "Downloading Squeak-5.3 image..."
wget http://files.squeak.org/5.3rc3/Squeak5.3rc3-19428-64bit/Squeak5.3rc3-19428-64bit-202002240037-Linux.zip
unzip Squeak5.3rc3-19428-64bit-202002240037-Linux.zip
mv Squeak5.3rc3-19428-64bit-202002240037-Linux Squeak5.3

mv Squeak5.3/shared/*.image "${DEPLOY_IMAGE}"
mv Squeak5.3/shared/*.changes "${DEPLOY_CHANGES}"
mv Squeak5.3/shared/SqueakV50.sources .
cp "../scripts/TextAnchorPlacement.cs" TextAnchorPlacement.cs

print_info "Preparing image..."
EXIT_STATUS=0
Squeak5.3/bin/squeak $COG_VM_PARAM "${DEPLOY_IMAGE}" "../scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    zip "${DEPLOY_PACKAGE}" *.image *.changes *.sources
else
    print_info "Preparation of image file failed."
fi

exit $EXIT_STATUS
