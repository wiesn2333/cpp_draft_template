# INPUT_FILE_WITH_PATH = source-file-with-path
DEBUG = false
BUILD_DIR := ./build

CXX := clang++
CXXFLAGS := -fdiagnostics-color=always -std=c++20 -g

SRC_FILE_NameNoExtension := $(shell basename $(INPUT_FILE_WITH_PATH) .cpp)
$(BUILD_DIR)/$(SRC_FILE_NameNoExtension): $(INPUT_FILE_WITH_PATH)
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $(INPUT_FILE_WITH_PATH) -o $@

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)