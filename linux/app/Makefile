CC ?= gcc
CFLAGS ?= -O2 -Wall -Wextra -std=c11

TARGET = stats_accel_app

all: $(TARGET)

$(TARGET): stats_accel_app.c
	$(CC) $(CFLAGS) -o $(TARGET) stats_accel_app.c

clean:
	rm -f $(TARGET)