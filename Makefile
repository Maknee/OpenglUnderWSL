SOURCES=learnopengl/*.cpp glad/*.c imgui/examples/imgui_impl_opengl3.cpp imgui/examples/imgui_impl_glfw.cpp imgui/imgui_draw.cpp imgui/*.cpp stb/*.c

MAIN_DIRECTORY=-Ilearnopengl
LIB_INCLUDES=-I. -Iimgui/ -Iglm/ -Iglad/ -Iimgui/stb_image -Istb/
GLFW3_FLAGS=-lGL `pkg-config --static --libs glfw3`
EXTRA_WSL_FLAGS=-lX11
OPENGL_FUNCTION_LOADER=-DIMGUI_IMPL_OPENGL_LOADER_GLAD
FLAGS=$(MAIND_DIRECTORY) $(LIB_INCLUDES) $(GLFW3_FLAGS) $(OPENGL_FUNCTION_LOADER) $(EXTRA_WSL_FLAGS)

test_program : $(SOURCES)
	clang++ -std=c++14 $^ $(FLAGS) -o $@

all : test_program

clean :
	rm -f imgui.ini
	rm -f test_program
