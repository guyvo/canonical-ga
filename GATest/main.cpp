#include <iostream>
#include <fstream>
#include "ga_basics.h"

using namespace std;

#define MAX_RUNS 100000
#define MIN_REACHED 0.98

int main (int argc, char * const argv[]) {
	
	IntegerPopulation iP;
	ValueTarget vT;
	ValueFitness vF;
	SimpleBreed sB;
	ofstream stats;
	int runs=0;
	double avg=0;
	
	stats.open("/Users/guyvo/stats/population_1000.csv", ios::trunc);
	
	iP.create(1000);
	iP.initialize(0.0000001);

	cout << "Average strength : " << hex << iP.returnAverageStrength() << endl;
	avg = iP.returnAverageStrength(); 
	cout << "Initial avg : " << (avg/0XFFFFFFFF)*100.0F << endl;
	
	while ( ! vT.reached(&iP,MIN_REACHED) && runs != MAX_RUNS){
		runs++;
		vF.run(&iP);
		sB.crossover(iP,TWO_POINT);
		sB.mutate(iP);
		avg = iP.returnAverageStrength();
		
		stats << (avg/0XFFFFFFFF)*100.0F << ",\n";
		
		cout << "iteration : " << dec << runs << endl;
	};
	//delete &iP;
	stats << (avg/0XFFFFFFFF)*100.0F << ",\n";
	cout << "Generation run :" << dec << runs << endl;
	cout << "Average strength : " << hex << iP.returnAverageStrength() << endl;
	avg = iP.returnAverageStrength();
	cout << "Goal reached : " << (avg/0XFFFFFFFF)*100.0F << endl;
	stats.flush();
	stats.close();
    return 0;
}
