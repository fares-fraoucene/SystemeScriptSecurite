#!bin/bash

top -b -n 1 | awk '{print "NOM PROC : " $12 ", %CPU : " $9 ", %MEM : " $10}' > /home/la_plateforme/Documents/Python/cpu_info.csv
