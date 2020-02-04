#!/bin/bash
# tail -n +2 allows you to look at all the lines, exclusing the header. cut -d specied the delimiter in this case its the ; and the -f species the c=particular columns we want to look at. tr -s replaces the ; with empty spaces. THe sort command in this case sorts it in reverse order by body mass (which is the the 6th column)
tail -n +2 $1 | cut -d "$3" -f 2-6 | tr -s "$3" " " | sort -r -n -k 6 > $2  
echo "Output file has been created"

#6
#change directory to be able to access the eeb-c-177-scripts folder
#then we would want to change the permission setting via chmod +x ExtractBodyM.sh
#go to home directory then open .profile file, and in a new line type $PATH="$HOME/Developer/repos/eeb-c-177-scripts"
#Save

