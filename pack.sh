#!/bin/sh -x

ZIP_FILE_NAME="Pheidias UI Pack-build${GITHUB_RUN_NUMBER}.zip"

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"

zip -r "${ZIP_FILE_NAME}" -xi assets icon.png pack.mcmeta
mv {,artifacts/}"${ZIP_FILE_NAME}"