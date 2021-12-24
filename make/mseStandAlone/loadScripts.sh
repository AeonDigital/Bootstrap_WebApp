#!/bin/bash -eu




#
# Carrega os scripts
TMP_PATH_TO_SCRIPTS="${MK_ROOT_PATH}/make/mseStandAlone/"
TMP_TARGET_SCRIPTS=(
  "functions/interface/"
  "functions/string/"
  "management/config_files/"
)


for tgtDir in "${TMP_TARGET_SCRIPTS[@]}"; do
  tgtPath="${TMP_PATH_TO_SCRIPTS}${tgtDir}"
  tgtFiles=$(find "$tgtPath" -name "*.sh");
  while read rawLine
  do
    source "$rawLine"
  done <<< ${tgtFiles}
done

unset tgtDir
unset tgtPath
unset tgtFiles
unset rawLine

unset TMP_PATH_TO_SCRIPTS
unset TMP_TARGET_SCRIPTS
