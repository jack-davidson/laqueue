CXX = clang++
override CXXFLAGS += -g -Wno-everything

SRCS = $(shell find . -name '.ccls-cache' -type d -prune -o -type f -name '*.cpp' -print)
OBJS = $(patsubst %.cpp, %.o, $(SRCS))

main: clean $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o main -lpthread

clean:
	rm -f $(OBJS) main