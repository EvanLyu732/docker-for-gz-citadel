#!/bin/bash

CUR_DIR=$(pwd)

build_cxx_code() {
  # building cxx code and install
  cmake -S. -Bbuild 
  pushd ./build > /dev/null
    make install
  popd > /dev/null;
}

WORKING_DIRS=$(ls -al | grep ign | awk '{print $NF}')

for WORK_DIR in $WORKING_DIRS;
do
    echo $WORK_DIR
    pushd $WORK_DIR > /dev/null;
      build_cxx_code
    popd > /dev/null;
done

