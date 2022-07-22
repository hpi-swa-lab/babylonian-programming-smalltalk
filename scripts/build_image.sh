#!/bin/bash
# Copyright (c) 2014-2018 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.
# Copyright (c) 2022 Patrick Rein

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

DEPLOY_PATH="deploy"
BUILD_DIR=.
SMALLTALK_VERSION="6.0"
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

wget --no-verbose http://files.squeak.org/6.0/Squeak6.0-22104-64bit/Squeak6.0-22104-64bit-202206021410-Linux-x64.tar.gz
tar xvf Squeak6.0-22104-64bit-202206021410-Linux-x64.tar.gz
mv Squeak6.0-22104-64bit-202206021410-Linux-x64 Squeak-6.0

mv Squeak6.0/shared/*.image "${DEPLOY_IMAGE}"
mv Squeak6.0/shared/*.changes "${DEPLOY_CHANGES}"
mv Squeak6.0/shared/SqueakV60.sources .

print_info "Preparing image..."
EXIT_STATUS=0
Squeak-trunk/bin/squeak $COG_VM_PARAM "${DEPLOY_IMAGE}" "../scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    zip "${DEPLOY_PACKAGE}" *.image *.changes *.sources
else
    print_info "Preparation of image file failed."
fi

exit $EXIT_STATUS
