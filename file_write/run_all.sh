#!/bin/sh

if [ $# -ne 0 ]; then
    echo "Usage: $0 <noargs>"
    exit 1
fi

PROGRAM=$(basename $(pwd))
WD=$(pwd)

for ELEMENT in $(find . -mindepth 1 -maxdepth 1 -type d -print | sort); do
  echo "${ELEMENT}"
  cd "${ELEMENT}"
  if [ -f run.sh ]; then
    ./run.sh
  else
    echo "No run.sh exists."
  fi
  #read -p "Press enter to continue"
  read -r -p "Press any key to continue..." KEY
  cd "$WD"
done

exit 0
