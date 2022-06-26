
CC=g++
# CC=clang++
DEPS= src/Linearalifold.h src/Utils/energy_parameter.h src/Utils/feature_weight.h src/Utils/intl11.h src/Utils/intl21.h src/Utils/intl22.h src/Utils/utility_v.h src/Utils/utility.h 
CFLAGS=-std=c++11 -O3
# CFLAGS=-std=c++11 -Ofast
.PHONY : clean linearalifold
objects=bin/linearalifold

linearalifold: src/Linearalifold.cpp $(DEPS) 
# 		chmod +x linearfold draw_circular_plot
		mkdir -p bin
# 		$(CC) src/LinearFold.cpp $(CFLAGS) -Dlv -Dis_cube_pruning -Dis_candidate_list -o bin/linearfold_v 
# 		$(CC) src/LinearFold.cpp $(CFLAGS) -Dis_cube_pruning -Dis_candidate_list -o bin/linearfold_c
		$(CC) src/Linearalifold.cpp $(CFLAGS) -Dlv -Dis_candidate_list -o bin/linearalifold 
# 		$(CC) src/LinearFold.cpp $(CFLAGS) -o bin/linearfold_c

clean:
	-rm $(objects)