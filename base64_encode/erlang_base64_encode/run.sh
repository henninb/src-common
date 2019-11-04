#!/bin/sh

if [ $# -ne 0 ]; then
  echo "Usage: $0 <noargs>"
  exit 1
fi

export OS=$(uname -s)
TARGET_SNAKE=$(basename $(pwd) | sed 's/^[^_]*_//')
LANGUAGE=$(basename $(pwd) | awk -F_ '{print  $1}')
EXT=erl
EXAMPLE_CAMEL=elpmaxE
EXAMPLE_SNAKE=elpmaxe

if [ -f /usr/bin/python2 ]; then
  TARGET_CAMEL=$(python2 ../../snakeToCamel.py ${TARGET_SNAKE})
else
  TARGET_CAMEL=$(python ../../snakeToCamel.py ${TARGET_SNAKE})
fi

rm -f ${TARGET_SNAKE}.beam

if [ -f ${TARGET_SNAKE}.${EXT} ]; then
  if [ ! -f Makefile ]; then
    echo "No Makefile exists."
    exit 1
  fi
  if [ "$(uname -s)" = "FreeBSD" ]; then
    gmake
  else
    make
  fi
  RC=$?
  if [ $RC -eq 0 ]; then
    if [ ! -f ${TARGET_SNAKE}.beam ]; then
      echo "No ${TARGET_SNAKE}.beam file exists."
      exit 2
    fi
    erl -noshell -s ${TARGET_SNAKE} start -s init stop
    RC=$?
    if [ $RC -eq 0 ]; then
      echo > /dev/null
    else
      echo "${TARGET_SNAKE}.beam execution failure."
    fi
  else
    echo "${TARGET_SNAKE}.beam build failure."
  fi
else
  EXAMPLE_CAMEL=$(echo ${EXAMPLE_CAMEL} | rev)
  EXAMPLE_SNAKE=$(echo ${EXAMPLE_SNAKE} | rev)
  echo -n "No src file found, would you like a copy of the base64_encode src (y/n)? "
  OLD_STTY_CFG=$(stty -g)
  stty raw -echo
  #ANSWER=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
  ANSWER=$(head -c 1)
  stty ${OLD_STTY_CFG}
  if echo ${ANSWER} | grep -iq "^y" ; then
    echo
    cp ../../${EXAMPLE_SNAKE}/${LANGUAGE}_${EXAMPLE_SNAKE}/${EXAMPLE_SNAKE}.${EXT} ${TARGET_SNAKE}.${EXT}
    if [ "$(uname -s)" = "FreeBSD" ]; then
      sed -ir "s/${EXAMPLE_SNAKE}/${TARGET_SNAKE}/g" ${TARGET_SNAKE}.${EXT}
    else
      sed -i "s/${EXAMPLE_SNAKE}/${TARGET_SNAKE}/g" ${TARGET_SNAKE}.${EXT}
    fi
  else
    echo
  fi
fi

exit 0
