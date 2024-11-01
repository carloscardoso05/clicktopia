CXX = g++
CXXFLAGS = -std=c++17 -Wall -I./raylib/include
LDFLAGS = -L./raylib/lib -lraylib -lpthread -lm -ldl

SRCS = main.cpp gerador_de_moedas/GeradorDeMoedas.cpp
TARGET = clicktopia

all:
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET) $(LDFLAGS)

clean:
	rm -f $(TARGET)