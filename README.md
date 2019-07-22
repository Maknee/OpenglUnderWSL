# Running opengl under wsl

# Blog link explaining

[Blog link](https://maknee.github.io/opengl/2019/07/21/Running-opengl-under-WSL/)

# Demo

<img align="center" src="images/running.gif" width="100%">

Note: This is a modified example from [learnopengl](https://learnopengl.com/Getting-started/Camera)

# Setup

## Basic example

`
git clone --recursive https://github.com/Maknee/OpenglUnderWSL
cd OpenglUnderWSL
./setup.sh
./test.sh
make
MESA_GL_VERSION_OVERRIDE=3.3 ./test_program
`
