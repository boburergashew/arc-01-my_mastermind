EXECUTABLE = mastermind


SRC_DIR = src
OBJ_DIR = obj

CC = gcc


CFLAGS = -Wall -Wextra -Werror

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJ)
  $(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
  $(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
  mkdir -p $(OBJ_DIR)

clean:
  rm -rf $(OBJ_DIR) $(EXECUTABLE)
