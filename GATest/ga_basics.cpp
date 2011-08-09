/*
 *  ga_basics.cpp
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 16/03/11.
 *  Copyright 2011 all rights reserved.
 *
 */

// C/C++ libs includes
#include <time.h>
#include <algorithm>
#include <bitset>
#include <iostream>
#include <cstdlib>
#include <cmath>
#include <algorithm>

// my own project includes
#include "ga_basics.h"
#include "random.h"

// avoid qualifiers
using namespace std;

// *********************************************************
// IntegerPopulation implements pure virtual Population
// *********************************************************

void IntegerPopulation::CalculateAverageStrength (){
	// ensure we can cope with large values 64 bit
	unsigned long long avg = 0;
	
	for (int i = 0 ; i < size ; i++)
		avg += thePopulation[i];
	
	averageStrength = (unsigned int) (avg/size);
	
}

void IntegerPopulation::ClearIntermediatePopulation(){
	for (int i=0; i < size ; i++) {
		breedPopulation[i] = DEAD;
	}
}

// no constructor is used here
void IntegerPopulation::create (size_t n){
	
	// size must always be even
	if ( n % 2 ) n++;
	
	// instantiate the populations
	thePopulation	= new unsigned int[n];
	breedPopulation = new unsigned int[n];
	size = n;
	
	// seed the radom with clock cycle
	srand(clock());
}

// complexity is a factor between [0..1] and serves as minimum treshold
void IntegerPopulation::initialize(double complexity){
	
	// fill the population with random values
	for (int i=0; i < size ; i++) {
		double treshold = complexity * TARGET;
		unsigned int gene = rand();

		// with respect to the initial complexity
		while (gene > treshold) {
			gene = rand();
		}
		
		thePopulation[i] = gene;
		breedPopulation[i] = DEAD;
	}
	
	// must recalculate the average strength now
	CalculateAverageStrength();
}

// destructor 
IntegerPopulation::~IntegerPopulation(){
	delete [] thePopulation;
	delete [] breedPopulation;
}

// return the size 
size_t IntegerPopulation::returnSize(){
	return size;
}

// return a pointer to the population
unsigned int * IntegerPopulation::returnThePopulation(){
	return thePopulation;
}

// return a pointer to intermidiate breed population
unsigned int * IntegerPopulation::returnBreedPopulation(){
	return breedPopulation;
}

// return the average strength
unsigned int IntegerPopulation::returnAverageStrength(){
	return averageStrength;
}

// in case we need to see the values
void IntegerPopulation::show(){
	for (int i=0; i < size; i++) {
		cout << hex << thePopulation[i] << endl;
	}
	cout << endl;
}

// *********************************************************
// ValueTarget implements pure virtual Target
// *********************************************************

bool ValueTarget::reached (Population * p , double weight){
	
	// cast the base type
	IntegerPopulation * iP = dynamic_cast<IntegerPopulation*> (p);
	
	// after each new generation calculate the new average strength
	iP->CalculateAverageStrength();
	
	// solution weigth
	double w = weight * TARGET;
	
	if ( iP->returnAverageStrength() > w )
		return true;
	
	return false;
}

// *********************************************************
// ValueFitness implements pure virtual Fitness
// *********************************************************

void ValueFitness::run (Population  * p){

	// cast the base type
	IntegerPopulation * iP = dynamic_cast<IntegerPopulation*> (p);
	
	double	fractionPart;
	double	integerPart;
	int		amountOfCopies;
	int		odds;
	int		breedIndex=0;
	
	// check the fitness against the average
	for (int i = 0 ; i < iP->returnSize() ; i++){
		
		// cast to double to get double precision for the fractional part
		double avg = (double)(iP->returnThePopulation()[i] / (double) iP->returnAverageStrength());
		
		// divide integer and fraction
		fractionPart = modf(avg, &integerPart);
		
		// calculate the copies and change to copy
		amountOfCopies = integerPart;
		odds = fractionPart * 100;
		
		// start copying in function of the strength
		while (amountOfCopies--) {
			iP->returnBreedPopulation()[breedIndex++] = iP->returnThePopulation()[i];
		}
		
		// when breed population is full abort 
		if (breedIndex == iP->returnSize())	return;
		
		// start a copy in function of the odds of the fractional part
		if ( Odds(odds) ){
			iP->returnBreedPopulation()[breedIndex++] = iP->returnThePopulation()[i];
		}

		// when breed population is full abort 
		if (breedIndex == iP->returnSize()) return;
	}
}

// *********************************************************
// SimpleBreed implements pure virtual Breed
// *********************************************************

void SimpleBreed::crossover (Population &p, CROSSOVER c){
	
	// cast the base type
	IntegerPopulation * iP =  dynamic_cast<IntegerPopulation*> (&p);
	
	// create the individuals as bitset to ease the crossover
	bitset <GENE_SIZE> male,female,child1,child2;
	
	int size = iP->returnSize();
	int index = size;
	
	while (index) {
		
		// take only the copies not the empty slots at random
		while ( (male = iP->returnBreedPopulation()[rand()%size]) == DEAD );
		while ( (female = iP->returnBreedPopulation()[rand()%size]) == DEAD);
		
		// start with full inheritance
		child1 = male;
		child2 = female;
		
		// continue with crossover
		if (c == SINGLE_POINT){
			
			// calculate point random
			int point = rand() % GENE_SIZE;
			
			// crossover bits
			for (int LSB = 0 ; LSB < point; LSB++) {
				child1.set(LSB, female.test(LSB));
				child2.set(LSB, male.test(LSB));
			}
			
			// assign the bitsets
			iP->returnThePopulation()[index--] = child1.to_ulong();
			iP->returnThePopulation()[index--] = child2.to_ulong();
		}
		else if( c == TWO_POINT ) {
			
			// calculate two points random with p2 > p1
			int point2 = rand() % GENE_SIZE;
			int point1 = rand() % (point2+1);
		
			// crossover bits
			for (int LSB = point1 ; LSB < point2; LSB++) {
				child1.set(LSB, female.test(LSB));
				child2.set(LSB, male.test(LSB));
			}
			
			// assign
			iP->returnThePopulation()[index--] = child1.to_ulong();
			iP->returnThePopulation()[index--] = child2.to_ulong();
			
		}			
	}
	
	// clear out the intermediate for the next run
	iP->ClearIntermediatePopulation();
}

void SimpleBreed::mutate (Population &p, int odds ){
	
	// cast the base type	
	IntegerPopulation * iP =  dynamic_cast<IntegerPopulation*> (&p);
	
	// consider the gene as bitset
	bitset<GENE_SIZE> gene;
	
	int index = iP->returnSize();
	
	while (index--) {
		
		// Only with a probabilty of odds in percent do the mutation
		if ( Odds(odds) ) {
			
			// we just a flip a random bit with no distance limitations
			gene = iP->returnThePopulation()[index];
			gene.flip(rand() %  gene.size());
			iP->returnThePopulation()[index] = gene.to_ulong();
		}
	}
	
}
