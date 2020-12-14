#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir build
cd $SCRIPT_PATH/build
cmake ..
make

# set bashrc
echo "
source $WORKSPACE_PATH/devel/setup.bash" >> ~/.bashrc