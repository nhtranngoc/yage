CC = gcc
CFLAGS = -Wall -Wextra -g

SRC_DIR = src
TEST_DIR = test
BUILD_DIR = build

INCLUDES = -I$(SRC_DIR)/cpu -I$(SRC_DIR)/gpu -I$(SRC_DIR)/memory -I$(SRC_DIR)/audio -I$(SRC_DIR)/input

LIBS = -lcriterion

SOURCES = $(SRC_DIR)/main.c \
          $(SRC_DIR)/cpu/cpu.c \
          $(SRC_DIR)/gpu/gpu.c \
          $(SRC_DIR)/memory/memory.c \
          $(SRC_DIR)/audio/audio.c \
          $(SRC_DIR)/input/input.c

TEST_SOURCES = $(TEST_DIR)/cpu_test.c

all: emulator

emulator: $(BUILD_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(BUILD_DIR)/emulator $(SOURCES)

test: tests
	./$(BUILD_DIR)/tests

tests: $(BUILD_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -o $(BUILD_DIR)/tests $(TEST_SOURCES) $(filter-out $(SRC_DIR)/main.c, $(SOURCES)) $(LIBS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)
