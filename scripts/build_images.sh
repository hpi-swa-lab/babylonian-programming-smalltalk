#!/bin/bash
# Copyright (c) 2014-2018 Software Architecture Group (Hasso Plattner Institute)
# Copyright (c) 2015 Fabio Niephaus, Google Inc.
# Copyright (c) 2020 Patrick Rein

set -e

function print_info {
    printf "\e[0;34m$1\e[0m\n"
}

DEPLOY_PATH="${SMALLTALK_CI_HOME}/deploy"
BUILD_DIR=.
SMALLTALK_VERSION=$GITHUB_SMALLTALK_VERSION
VM=$SMALLTALK_CI_VM
# ==============================================================================

# Set paths and files
# ==============================================================================
DEPLOY_IMAGE="Babylonian-${SMALLTALK_VERSION}.image"
DEPLOY_CHANGES="Babylonian-${SMALLTALK_VERSION}.changes"
COG_VM_PARAM=""
if [[ "$(uname -s)" == "Linux" ]]; then
    COG_VM_PARAM="-nosound -nodisplay"
fi
# ==============================================================================

mkdir -p "${DEPLOY_PATH}" 
cd "${DEPLOY_PATH}"

print_info "Downloading Squeak-5.3 image..."
wget http://files.squeak.org/5.3rc3/Squeak5.3rc3-19428-64bit/Squeak5.3rc3-19428-64bit.zip
unzip Squeak5.3rc3-19428-64bit.zip
wget http://files.squeak.org/sources_files/SqueakV50.sources.gz
gunzip SqueakV50.sources.gz

mv *.image "${DEPLOY_IMAGE}"
mv *.changes "${DEPLOY_CHANGES}"
cp "${BUILD_DIR}/scripts/TextAnchorPlacement.cs" TextAnchorPlacement.cs

print_info "Preparing ${SMALLTALK_VERSION} image..."
EXIT_STATUS=0
"${VM}" $COG_VM_PARAM "${DEPLOY_IMAGE}" "${BUILD_DIR}/scripts/prepare_image.st" || EXIT_STATUS=$?

if [[ $EXIT_STATUS -eq 0 ]]; then
    zip "Babylonian-${SMALLTALK_VERSION}.zip" *.image *.changes *.sources
else
    print_info "Preparation of image file failed."
fi

exit $EXIT_STATUS
