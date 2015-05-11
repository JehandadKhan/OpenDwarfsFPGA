program_NAME := fft
program_C_SRCS := $(wildcard *.c) $(wildcard ../../../../../opts/*.c) $(wildcard ../../../../../include/*.c) $(wildcard ../../opts/*.c)  $(wildcard ../../common/*.c)
program_CXX_SRCS := $(wildcard *.cpp)  $(wildcard ../../common/*.cpp) $(wildcard ../fft/*.cpp)
program_C_OBJS := ${program_C_SRCS:.c=.o}
program_CXX_OBJS := ${program_CXX_SRCS:.cpp=.o}
program_OBJS := $(program_C_OBJS) $(program_CXX_OBJS)
program_INCLUDE_DIRS :=
program_LIBRARY_DIRS :=
program_LIBRARIES :=

CROSS_COMPILER=arm-linux-gnueabihf-
CPPFLAGS += -g   -D OPENCL_HEADER_CL_CL  $(shell aocl compile-config --arm) -I../common/inc -Ihost/inc -I/Personal/opendwarfs -I/Personal/opendwarfs/include  -I../../common -I../common
CFLAGS += -g -D OPENCL_HEADER_CL_CL $(shell aocl compile-config --arm) -I../common/inc -Ihost/inc -I/Personal/opendwarfs -I/Personal/opendwarfs/include -I../../common -I../common
LDFLAGS +=  $(shell aocl link-config --arm)
CXX := arm-linux-gnueabihf-g++
CC := arm-linux-gnueabihf-gcc
LD := arm-linux-gnueabihf-g++
.PHONY: all clean distclean

all: $(program_NAME)

$(program_NAME): $(program_OBJS)
	$(LINK.cc) $(program_OBJS) -o $(program_NAME)

clean:
	@- $(RM) $(program_NAME)
	@- $(RM) $(program_OBJS)

distclean: clean
