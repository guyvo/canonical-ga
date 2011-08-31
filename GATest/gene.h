/*
 *  gene.h
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 29/08/11.
 *  Copyright 2011 ATOS worldline. All rights reserved.
 *
 */

#include <bitset>
using namespace std;

/// STD doesn't allow dynamic allocation of bitset
const static int GeneSize = 4;

class Gene{

public:
	Gene ( const bitset <GeneSize> &g  );
	void SetBestGene ( const bitset <GeneSize> &g = bitset <GeneSize> (string ("1111")) ); 
	bool operator > ( const Gene &a );
	
private:
	bitset <GeneSize> gene;
	bitset <GeneSize> best;
	
	
	
}; 