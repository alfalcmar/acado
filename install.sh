#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

mkdir build
cd $SCRIPT_PATH/build
cmake ..
make


# set bashrc/zshrc
if [ $SHELL = /usr/bin/zsh ]; then
SHELL_TYPE=zsh
elif [ $SHELL = /bin/bash ]; then 
SHELL_TYPE=bash
fi

RCFILE=.${SHELL_TYPE}rc

num=`cat ~/$RCFILE | grep "acado_env.sh" | wc -l`
if [ "$num" -lt "1" ]; then

  echo "adding sourcing of workspace to rc file"
  echo "source $SCRIPT_PATH/build/acado_env.sh" >> ~/$RCFILE
  
fi
