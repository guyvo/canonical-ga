/*
 *  ga_basics.h
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 16/03/11.
 *  Copyright 2011 all rights reserved.
 *
 */

#include "ga.h"

#define TARGET		0xFFFFFFFF
#define DEAD		0
#define GENE_SIZE	32 

//************ The population

class IntegerPopulation:public Population {

private:
	
	unsigned int *	thePopulation;
	unsigned int *	breedPopulation;
	unsigned int	averageStrength;
	size_t size;
	
	
public:
	
	void create (size_t n);
	void initialize (double complexity = 0.2);
	size_t returnSize();
	void show();
	unsigned int * returnThePopulation();
	unsigned int * returnBreedPopulation();
	void CalculateAverageStrength();
	unsigned int returnAverageStrength();
	void ClearIntermediatePopulation();
	~IntegerPopulation ();
};

//************* The target

class ValueTarget:public Target{
public:
	bool reached (Population * p,double weight = 0.95);
};

//************* The fitness

class ValueFitness:public Fitness{
public:
	void run (Population * p);
};

//************* The  breed

class SimpleBreed:public Breed{
public:
	void mutate (Population &p,  int odds=1);
	void crossover (Population &p, CROSSOVER c = SINGLE_POINT);
};
