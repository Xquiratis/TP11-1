# A mettre a jour : répertoire d'installation de Google Test
GTEST_DIR = ./googletest/googletest
GTEST_LIB = ./googletest/lib

all : main.out

CPP_FLAGS = -isystem $(GTEST_DIR)/include  -g -Wall -Wextra -pthread -std=c++11

GTEST_HEADERS = $(GTEST_DIR)/include/gtest/*.h \
                $(GTEST_DIR)/include/gtest/internal/*.h

BateauTest.o: BateauTest.cpp Bateau.o
	g++ -c $(CPP_FLAGS) BateauTest.cpp

Bateau.o: Bateau.cpp Bateau.hpp
	g++ -c $(CPP_FLAGS) Bateau.cpp

BateauTest.out: BateauTest.o Bateau.o
	g++ $(CPP_FLAGS) -o BateauTest.out BateauTest.o Bateau.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a


JoueurTest.o: JoueurTest.cpp Joueur.o
	g++ -c $(CPP_FLAGS) JoueurTest.cpp

Joueur.o: Joueur.cpp Joueur.hpp
	g++ -c $(CPP_FLAGS) Joueur.cpp

JoueurTest.out: JoueurTest.o Joueur.o
	g++ $(CPP_FLAGS) -o JoueurTest.out JoueurTest.o Joueur.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a


PartieTest.o: PartieTest.cpp Partie.o
	g++ -c $(CPP_FLAGS) PartieTest.cpp

Partie.o: Partie.cpp Partie.hpp
	g++ -c $(CPP_FLAGS) Partie.cpp

PartieTest.out: PartieTest.o Partie.o
	g++ $(CPP_FLAGS) -o PartieTest.out PartieTest.o Plateau.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a


main.o: main.cpp 
	g++ -c $(CPP_FLAGS) main.cpp

main.out: main.o Plateau.o Joueur.o Bateau.o
	g++ $(CPP_FLAGS) -o main.out main.o Plateau.o Joueur.o Bateau.o -lpthread $(GTEST_LIB)/libgtest.a $(GTEST_LIB)/libgtest_main.a




