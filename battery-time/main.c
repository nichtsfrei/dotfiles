#include <stdio.h>
#include <time.h>

int read_from_file(char *path){
	FILE *fp = fopen(path, "r");
	if (fp == NULL)
		return -1;
	unsigned int number = 0;
	while (!feof (fp)){  
		fscanf (fp, "%d", &number);      
	}
	fclose(fp);	
	return number;
}

int main(){
	char energy_now_path[40];
	char energy_full_path[41];
	int energy_now = 0;
	int energy_full = 0;
	for (int i = 0; i < 10; i++){
		snprintf(energy_now_path, 40, "/sys/class/power_supply/BAT%d/energy_now", i);
		energy_now = read_from_file(energy_now_path);
		if (energy_now < 0){
			break;
		}
		snprintf(energy_full_path, 41, "/sys/class/power_supply/BAT%d/energy_full", i);
		energy_full = read_from_file(energy_full_path);
		if (energy_full < 0){
			break;
		}
		printf("| BAT%d: %0.2f ", i, (float) energy_now / (float) energy_full);
	}
	time_t now = time(&now);
	if (now > -1){
		struct tm *ptm = gmtime(&now);
		if (ptm != NULL) {
			char time_s[36];
			strftime(time_s, 36, "%a, Week %V, %F, %T" , ptm);
			printf("| %s ", time_s);
		}
	}

	return 0;
}
