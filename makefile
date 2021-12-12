.PHONY: clean all 

BIN_DIR = ./bin
BUILD_DIR = ./build
SRC_DIR = ./calcApp
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: $(BUILD_DIR)/main.o 
	g++ $(FLAGS) $(BUILD_DIR)/main.o $(BIN_DIR)/main

$(BUILD_DIR)/calcApp.o:
	g++ $(FLAGS) -c $(SRC_DIR)/main.cpp -o $(BUILD_DIR)/main.o
	
		
run: 
	./bin/main
	

clean:
	rm -f build/*.o
	rm -f bin/main
