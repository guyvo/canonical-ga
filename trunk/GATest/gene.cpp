/*
 *  gene.cpp
 *  GATest
 *
 *  Created by Guy Van Overtveldt on 29/08/11.
 *  Copyright 2011 ATOS worldline. All rights reserved.
 *
 */

#include "gene.h"

Gene::Gene ( const bitset <GeneSize> & g  ){
	gene = g;

	
}
void Gene::SetBestGene ( const bitset <GeneSize> &g  ){
	best = g;
}

bool Gene::operator > (const Gene &a) {
	int tmp;
	tmp = (a.gene ^ best).count();
	
	return ( (a.gene ^ best).count() > (gene ^ best).count() );
}
