program_NAME := csr
program_C_SRCS := $(wildcard *.c) $(wildcard ../../../include/*.c) $(wildcard ../../../opts/*.c) $(wildcard ../src-common/*.c) 
program_CXX_SRCS := $(wildcard *.cpp)
program_C_OBJS := ${program_C_SRCS:.c=.o}
program_CXX_OBJS := ${program_CXX_SRCS:.cpp=.o}
program_OBJS := $(program_C_OBJS) $(program_CXX_OBJS)
program_INCLUDE_DIRS :=
program_LIBRARY_DIRS :=
program_LIBRARIES :=

CROSS_COMPILER=arm-linux-gnueabihf-
CPPFLAGS += -D CL_MEM_BANK_1_ALTERA -D CL_MEM_BANK_2_ALTERA -D OPENCL_HEADER_CL_CL $(shell aocl compile-config --arm) -I../common/inc -Ihost/inc -I/Personal/opendwarfs
CFLAGS += -D CL_MEM_BANK_1_ALTERA -D CL_MEM_BANK_2_ALTERA -D OPENCL_HEADER_CL_CL $(shell aocl compile-config --arm) -I../common/inc -Ihost/inc -I/Personal/opendwarfs
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
