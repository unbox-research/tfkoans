#!/bin/bash
#
# Set up the virtual environment to be used for work
# on tfkoans (tensorflow koans).
#

ENV_NAME="tfkoans-env"

command_exists () {
    type "$1" &> /dev/null ;
}

if [[ $- != *i* ]]; then
    echo Please run this script like so: ". setup_env.sh"
    echo That allows the script to put you into the virtual environment.
    exit 1
fi

if [ ! -d $ENV_NAME ]; then

    if ! command_exists virtualenv; then
        echo "Please install virtualenv: pip install virtualenv"
        echo "sudo may be needed"
        exit 1
    fi

    echo
    echo Setting up environment with virtualenv.
    echo =======================================
    virtualenv -p python3 $ENV_NAME
    echo

    source $ENV_NAME/bin/activate

    pip install jupyter ipython tensorflow numpy scipy sklearn jupyterlab

    ipython kernel install --user --name=$ENV_NAME

else

    echo Looks like your virtual environment already exists.

    source $ENV_NAME/bin/activate

fi
