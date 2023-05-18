#!/bin/bash

CUR_DIR=$(pwd)
WORKING_DIRS=$(ls -al | grep ign | awk '{print $NF}')

build_cxx_code() {
    # building cxx code and install
   cmake -S. -Bbuild 
   pushd ./build > /dev/null
     make install
   popd > /dev/null;
}
 
for WORK_DIR in $WORKING_DIRS;
do
    echo $WORK_DIR
done
