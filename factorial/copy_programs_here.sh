#!/bin/sh

if [ $# -ne 0 ]; then
    echo "Usage: $0 <noargs>"
    exit 1
fi

if [ "$(uname -s)" = "FreeBSD" ]; then
  exit 2
fi

echo "check for python"

deployFile() {
  local LANGUAGE=$1
  local PROGRAM_SNAKE=$2
  local FNAME=$3
  local OVERWRITE_FLAG=$4

  PROGRAM_CAMEL=$(python ../snakeToCamel.py ${PROGRAM_SNAKE})

  if [ -f "${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}" ]; then
    echo > /dev/null
    if [ "${OVERWRITE_FLAG}" = "Y" ]; then
      SRC_MD5=$(md5sum ../example/${LANGUAGE}_example/${FNAME} | awk '{print $1;}')
      DEST_Md5=$(cat ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME} | sed "s/${PROGRAM_CAMEL}/Example/g" | sed "s/${PROGRAM_SNAKE}/example/g" | md5sum | awk '{print $1;}')

      #echo "cat ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME} | sed 's/${PROGRAM_CAMEL}/Example/g' | sed 's/${PROGRAM_SNAKE}/example/g' | md5sum | awk '{print \$1;}'"
      if [ "$SRC_MD5" = "$DEST_Md5" ]; then
        echo > /dev/null
      else
        echo "${FNAME} copied due to hash diff <$SRC_MD5> and <$DEST_Md5>"
        #echo "cp ../example/${LANGUAGE}_example/${FNAME} ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}"
        cp ../example/${LANGUAGE}_example/${FNAME} ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
        sed -i "s/Example/${PROGRAM_CAMEL}/g" ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
        sed -i "s/example/${PROGRAM_SNAKE}/g" ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
      fi
    fi
  else
    echo "*** ${PROGRAM_SNAKE} no ${FNAME} for ${LANGUAGE}."
    cp ../example/${LANGUAGE}_example/${FNAME} ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
    if [ ! "${FNAME}" = "readme.md" ]; then
      sed -i "s/Example/${PROGRAM_CAMEL}/g" ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
      sed -i "s/example/${PROGRAM_SNAKE}/g" ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
    fi
    git add ${LANGUAGE}_${PROGRAM_SNAKE}/${FNAME}
  fi
}

CopyFiles() {
  local PROGRAM=$1
  local LANGUAGE=$2
  local WD=$(pwd)
  local FILES

  mkdir -p "${LANGUAGE}_${PROGRAM}"
  #find . -name "*.asm" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1

  find . \( -name "*.txt" -o -name "*.cmd" -o -name "*.sh" -o -name "*.md" -o -name "Makefile" -o -name "build.gradle" \) -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
  find . \( -name "*.txt" -o -name "*.cmd" -o -name "*.sh" -o -name "*.md" -o -name "build.gradle" \) -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
  find . \( -name "*.txt" -o -name "*.cmd" -o -name "*.sh" -o -name "*.md" -o -name "Makefile" -o -name "build.gradle" \) -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1

  if [ ${LANGUAGE} = "forth" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.f" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.f" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.f" -print | xargs xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "ocaml" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.ml" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.ml" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.ml" -print | xargs xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "haskell" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.hs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.hs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.hs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "typescript" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.ts" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.ts" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.ts" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "groovy" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} manifest.mf "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.gradle "Y"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew "N"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew.bat "N"
    find . -name "*.groovy" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.groovy" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.groovy" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "sml" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.sml" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.sml" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.sml" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "vbs" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.vbs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.vbs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.vbs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "tcl" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.tcl" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.tcl" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.tcl" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "scheme" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.scm" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.scm" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.scm" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "rust" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Cargo.toml "Y"
    find . -name "*.rs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.rs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.rs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "ruby" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.rb" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.rb" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.rb" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "python" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.py" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.py" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.py" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "powershell" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.ps1" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.ps1" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.ps1" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "pascal" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.pas" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.pas" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.pas" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "lisp" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.lsp" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.lsp" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.lsp" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "javascript" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.js" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.js" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.js" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "java" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} manifest.mf "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.gradle "Y"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew "N"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew.bat "N"
    find . -name "*.java" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.java" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.java" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "golang" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.go" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.go" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.go" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "fsharp" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build_vstudio.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} project.sln "Y"
    deployFile ${LANGUAGE} ${PROGRAM} project.fsproj "Y"
    find . -name "*.fs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.fs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.fs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "csharp" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build_vstudio.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} project.sln "Y"
    deployFile ${LANGUAGE} ${PROGRAM} project.csproj "Y"
    find . -name "*.cs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.cs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.cs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "clojure" ]; then
    mkdir -p ${LANGUAGE}_${PROGRAM}/src
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} project.clj "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.gradle "Y"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew "N"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew.bat "N"
    find . -name "*.clj" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.clj" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.clj" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "c" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} project.sln "Y"
    deployFile ${LANGUAGE} ${PROGRAM} project.vcxproj "Y"
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} build_vstudio.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.h" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.h" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.h" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
    find . -name "*.c" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.c" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.c" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "ada" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.adb" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.adb" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.adb" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
    find . -name "*.ads" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.ads" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.ads" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "perl" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.pl" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.pl" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.pl" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "lua" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.lua" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.lua" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.lua" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "erlang" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.erl" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.erl" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.erl" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "rlang" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.R" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.R" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.R" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "objc" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.m" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.m" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.m" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "dart" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    find . -name "*.dart" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.dart" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.dart" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "elixir" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    find . -name "*.exs" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.exs" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.exs" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
    find . -name "*.ex" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.ex" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.ex" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "fortran" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    find . -name "*.f" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.f" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.f" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "cpp" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    find . -name "*.cpp" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.cpp" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.cpp" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "scala" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} manifest.mf "Y"
    find . -name "*.scala" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.scala" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.scala" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "julia" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.jl" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.jl" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.jl" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "kotlin" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    deployFile ${LANGUAGE} ${PROGRAM} Makefile "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} build.gradle "Y"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew "N"
    deployFile ${LANGUAGE} ${PROGRAM} gradlew.bat "N"
    find . -name "*.kt" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.kt" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.kt" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "racket" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    deployFile ${LANGUAGE} ${PROGRAM} run.cmd "Y"
    deployFile ${LANGUAGE} ${PROGRAM} run.sh "Y"
    find . -name "*.rkt" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.rkt" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.rkt" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi
  if [ ${LANGUAGE} = "php" ]; then
    deployFile ${LANGUAGE} ${PROGRAM} readme.md "N"
    find . -name "*.php" -print | xargs sed -i 's/\r//g' > /dev/null 2>&1
    find . -name "*.php" -print | xargs sed -i 's/\t/    /g' > /dev/null 2>&1
    find . -name "*.php" -print | xargs sed -i 's/\s*$//g' > /dev/null 2>&1
  fi

  cd "${WD}"
}

PROGRAM=$(basename $(pwd))

for ELEMENT in $(cat ../languages.cfg); do
  CopyFiles "${PROGRAM}" "${ELEMENT}"
done

exit 0
