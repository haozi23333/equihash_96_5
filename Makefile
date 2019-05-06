OPT   = -O3
FLAGS = -Wall -Wno-deprecated-declarations -D_POSIX_C_SOURCE=200112L $(OPT) -pthread 
GPP   = g++ -march=native -m64 -std=c++11 $(FLAGS)

all:	eqcuda965

eqcuda965:	equi_miner.cu equi.h blake2b.cu Makefile
	nvcc -DWN=96 -DWK=5  -DRESTBITS=4 -arch sm_35 equi_miner.cu blake/blake2b.cpp -o eqcuda965
