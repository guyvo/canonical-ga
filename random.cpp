/*
 *  random.cpp
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 24/03/11.
 *  Copyright 2011 all rights reserved.
 *
 */
#include <cstdlib>
#include "random.h"

// return true when change is met the condition in percent
// eg odd=10 -> 10% change for true 90% change for false
// eg odd=90 -> 90% change for true 10% change for false
// odds = [ 1 .. 100 ]
bool Odds ( int odds ){
	int random = rand() % 101;
	return ( (random <= odds) && (random != 0) );
}