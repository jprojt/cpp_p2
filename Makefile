.PHONY: all
all: build

.PHONY: build
build:
	mkdir -p build
	cd build && \
	cmake -DCMAKE_CXX_FLAGS=-std=c++17 .. && \
	cmake --build . --config Release --target membot

.PHONY:
debug:
	mkdir -p build
	cd build && \
	cmake -DCMAKE_BUILD_TYPE=debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_CXX_FLAGS=-std=c++17 ..  && \
	cmake --build . --config Debug --target membot

.PHONY:
clean:
	rm -rf build
.PHONY:
run_debug: debug
	cd build && ./membot
	
