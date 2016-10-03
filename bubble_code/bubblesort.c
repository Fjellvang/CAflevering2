#include <stdio.h>


int bubblesort(long length, long *sort_list) {
  // Insert your sorting algorith
	long i = 0;
	long j = 0;
	while(i < length-1){
		j = 0;
		while(j < length-1){
			if(sort_list[j] > sort_list[j+1]){
				long temp = sort_list[j];
				sort_list[j] = sort_list[j+1];
				sort_list[j+1] = temp;
			}
			j++;
		}
		i++;
	}	
	return 5;
}

