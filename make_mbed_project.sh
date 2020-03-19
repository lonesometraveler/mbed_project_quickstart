#!/bin/bash
read -p "Project Name: " name
PROJ_NAME=$name
echo "Creating project called ${PROJ_NAME}..."

read -p "mbed target: " target

read -p "mbed toolchain: " toolchain

# create a mbed project
mbed new ${PROJ_NAME}
cd ${PROJ_NAME}
mbed deploy

# mbed setting
# target
mbed target ${target}
echo "mbed target is now ${target}."
# toolchain
mbed toolchain ${toolchain}
echo "mbed toolchain is now ${toolchain}."

# create folders
mkdir src
mkdir include
mkdir lib
mkdir tests
mkdir doc

# import main.cpp template
cd src
curl -O https://raw.githubusercontent.com/lonesometraveler/mbed_projects_template/master/main.cpp

# import debug.h
cd ../include
curl -O https://raw.githubusercontent.com/lonesometraveler/debug/master/debug.h

echo "Done"
