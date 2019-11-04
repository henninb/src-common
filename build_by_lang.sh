#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <language>"
    exit 1
fi

LANGUAGE=$1
WD=$(pwd)

for ELEMENT in $(find . -mindepth 2 -maxdepth 2 -type d -print | grep "/$LANGUAGE"_ | sort); do
  cd "${ELEMENT}"
  echo "${ELEMENT}"
  ./run.sh
  read -p "Press enter to continue"
  cd "$WD"
done

exit 0
