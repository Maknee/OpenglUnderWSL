#!/bin/bash

export DISPLAY=:0
GLX_INFO_OKAY="$(MESA_GL_VERSION_OVERRIDE=3.3 glxinfo | grep "OpenGL version string: 3.3 (Compatibility Profile)")"

GREEN='\033[0;32m'
RED='\033[0;31m'
REGULAR='\033[0m'

if [ ! -z "$GLX_INFO_OKAY" ]; then
	printf "${GREEN}OPENGL 3.3 FOUND${REGULAR}\n"
else
	printf "${RED}OPENGL 3.3 NOT FOUND${REGULAR}\n"
fi

xeyes


