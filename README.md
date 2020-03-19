# Mbed project quick start script
A script to generate a mbed project template.

## Requirements

- [Mbed CLI](https://github.com/ARMmbed/mbed-cli)

## Usage

Run `mbed_project_quickstart.sh` and enter project name, target and toolchain when prompted.

```
bash make_mbed_project.sh
```
It will define `TARGET` and `TOOLCHAIN` in `.mbed` file and generate a template like this. 

```
project_name
    - doc
    - include
      - debug.h
    - lib
    - mbed_settings.py
    - mbed-os
    - src
      - main.cpp
    - doc
```
