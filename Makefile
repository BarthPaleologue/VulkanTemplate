CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

Vulkan: main.cpp
	g++ $(CFLAGS) -o Vulkan main.cpp $(LDFLAGS)

.PHONY: test clean

test: Vulkan
	./Vulkan

clean:
	rm -f Vulkan