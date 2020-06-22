#include <stdio.h>

int main(int argc, char** argv) {
  
  int x = 4;
	    
		printf("+");
		for (int i = 0; i < x; i++) {
		    puts("-+");
		    for (int j = 0; j < i; j++) {
		        printf("  ");
		    }
		    
		    puts("| |");
		    for (int j = 0; j < i; j++) {
		        printf("  ");
		    }
		    
		    printf("+-+");
		}
  
  return 0;
}