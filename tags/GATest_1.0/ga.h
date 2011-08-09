/*
 *  ga.h
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 16/03/11.
 *  Copyright 2011 all rights reserved.
 *
 *	Generic interface to work with GA 
 */

#include <unistd.h>

enum CROSSOVER {
	SINGLE_POINT,TWO_POINT
};

class Population{
	virtual void create (size_t n)=0;
	virtual void initialize (double complexity = 0.2)=0;
};

class Target{
	virtual bool reached (Population * p , double weight = 0.99)=0;
};

class Fitness{
	virtual void run (Population  * p)=0;
};

class Breed{
	virtual void mutate (Population  &p,  int odds=1)=0;
	virtual void crossover (Population  &p, CROSSOVER c = SINGLE_POINT)=0;
};

class Result{
	virtual void intermidiate (void)=0;
	virtual void totalize (void)=0;
};