# Makefile for HelloWorld project
CC = gcc
CFLAGS = -Wall -Wextra -O2 -I./include
TARGET = hello
SRC = src/hello.c
OBJ = $(SRC:.c=.o)

# 默认目标
all: $(TARGET)

# 链接生成可执行文件
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# 编译源文件
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# 清理构建文件
clean:
	rm -f $(OBJ) $(TARGET)

# 安装到系统目录
install: $(TARGET)
	cp $(TARGET) /usr/local/bin/

# 运行测试
test: $(TARGET)
	./$(TARGET)

# 调试版本
debug: CFLAGS += -g -DDEBUG
debug: clean all

.PHONY: all clean install test debug
