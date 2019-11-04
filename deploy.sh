#!/bin/sh

if [ $# -ne 0 ]; then
    echo "Usage: $0 <noargs>"
    exit 1
fi

PROGRAM=$(basename $(pwd))
WD=$(pwd)

#echo "delete binaries"
#find . -type f -perm /u=x,g=x,o=x | grep -v ".sh | xargs rm
find . -name "*.sh" | xargs chmod 744
find . -name "*.txt" | xargs chmod 644
find . -name "*.md" | xargs chmod 644

NORMALIZE_MD5_SRC=$(md5sum copy_programs_here.sh | awk '{print $1;}')
RUNALL_MD5_SRC=$(md5sum run_all_master.sh | awk '{print $1;}')
echo ${NORMALIZE_MD5_SRC}
for ELEMENT in $(find . -mindepth 1 -maxdepth 1 -type d -print | sort); do
  echo "${ELEMENT}"
  NORMALIZE_MD5_DEST=$(md5sum ${ELEMENT}/copy_programs_here.sh | awk '{print $1;}') 
  RUNALL_MD5_DEST=$(md5sum ${ELEMENT}/run_all.sh | awk '{print $1;}') 
  if [ "$NORMALIZE_MD5_SRC" = "$NORMALIZE_MD5_DEST" ]; then
    echo "no action required for copy_programs_here.sh"
  else
    echo "copying copy_programs_here.sh ..."
    cp copy_programs_here.sh ${ELEMENT}/copy_programs_here.sh
    git add ${ELEMENT}/copy_programs_here.sh
  fi

  if [ "$RUNALL_MD5_SRC" = "$RUNALL_MD5_DEST" ]; then
    echo "no action for run_all.sh"
  else
    echo "copying run_all.sh ..."
    cp run_all_master.sh ${ELEMENT}/run_all.sh
    git add ${ELEMENT}/run_all.sh
  fi
  cd "${ELEMENT}"
  echo $(pwd)
  sh ./copy_programs_here.sh
  cd "$WD"
done

exit 0
