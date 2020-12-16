#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir build
cd $SCRIPT_PATH/build
cmake ..
make

# set bashrc
echo "
source $SCRIPT_PATH/build/acado_env.sh" >> ~/.bashrc