#!/bin/sh

if [ $# -ne 0 ]; then
  echo "Usage: $0 <noargs>"
  exit 1
fi

export OS=$(uname -s)
TARGET_SNAKE=$(basename $(pwd) | sed 's/^[^_]*_//')
LANGUAGE=$(basename $(pwd) | awk -F_ '{print  $1}')
EXT=clj
EXAMPLE_CAMEL=elpmaxE
EXAMPLE_SNAKE=elpmaxe

if [ -f /usr/bin/python2 ]; then
  TARGET_CAMEL=$(python2 ../../snakeToCamel.py ${TARGET_SNAKE})
else
  TARGET_CAMEL=$(python ../../snakeToCamel.py ${TARGET_SNAKE})
fi

rm -f ${TARGET_SNAKE}.jar

if [ -f src/${TARGET_SNAKE}.${EXT} ]; then
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
    if [ ! -f uberjar/${TARGET_SNAKE}-1.0.jar ]; then
      echo "No ${TARGET_SNAKE}.jar exists."
      exit 2
    fi
    lein run
    RC=$?
    if [ $RC -eq 0 ]; then
      rm -rf 'base+system+user+dev'
    else
      echo "${TARGET_SNAKE}.jar  execution failure."
    fi
  else
    echo "${TARGET_SNAKE}.jar build failure."
  fi
else
  EXAMPLE_CAMEL=$(echo ${EXAMPLE_CAMEL} | rev)
  EXAMPLE_SNAKE=$(echo ${EXAMPLE_SNAKE} | rev)
  mkdir -p src
  echo -n "No src file found, would you like a copy of the entry_point src (y/n)? "
  OLD_STTY_CFG=$(stty -g)
  stty raw -echo
  #ANSWER=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
  ANSWER=$(head -c 1)
  stty ${OLD_STTY_CFG}
  if echo ${ANSWER} | grep -iq "^y" ; then
    echo
    cp ../../${EXAMPLE_SNAKE}/${LANGUAGE}_${EXAMPLE_SNAKE}/src/${EXAMPLE_SNAKE}.${EXT} src/${TARGET_SNAKE}.${EXT}
    if [ "$(uname -s)" = "FreeBSD" ]; then
      sed -ir "s/${EXAMPLE_SNAKE}/${TARGET_SNAKE}/g" src/${TARGET_SNAKE}.${EXT}
      sed -ir "s/${EXAMPLE_SNAKE}/${TARGET_SNAKE}/g" src/${TARGET_SNAKE}.${EXT}
    else
      sed -i "s/${EXAMPLE_SNAKE}/${TARGET_SNAKE}/g" src/${TARGET_SNAKE}.${EXT}
      sed -i "s/${EXAMPLE_CAMEL}/${TARGET_CAMEL}/g" src/${TARGET_SNAKE}.${EXT}
    fi
  else
    echo
  fi
fi

exit 0
