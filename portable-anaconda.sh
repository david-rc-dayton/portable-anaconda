#!/usr/bin/env bash
set -e

if [ $# -eq 0 ]; then
    echo "Anaconda installer not provided. Exiting..."
    exit 1
fi

command -v 7z >/dev/null 2>&1 || { echo >&2 "7-Zip command not found. Exiting..."; exit 1; }

INPUT=${1}
TEMP_PATH=tmp_$(printf "%04x" $RANDOM $RANDOM)
ARCHIVE_PATH=${TEMP_PATH}/archive
PYTHON_PATH=${TEMP_PATH}/python

function cleanup {
    rm -rf ${TEMP_PATH}
}
trap cleanup EXIT

mkdir -p ${ARCHIVE_PATH} ${PYTHON_PATH}
7z e ${INPUT} **/*.bz2 -o${ARCHIVE_PATH}
VERSION=$(ls ${ARCHIVE_PATH} | grep -oP '^python-[0-9]+.[0-9]+.[0-9]+' | sed 's/-/-v/')
OUTFILE=${VERSION}-win32.tar.gz
find ${ARCHIVE_PATH} -name "*.bz2" -printf "Unpacking: %f ...\n" \
    -exec tar xf {} -C ${PYTHON_PATH} \;
find ${PYTHON_PATH} \( -name "*.pyc" -or -name "*.pyo" \) -exec rm {} \;
echo ${OUTFILE}
tar -C ${TEMP_PATH} -cv python | gzip > ${OUTFILE}
