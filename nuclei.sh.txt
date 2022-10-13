#! /bin/bash
#sub enum with subfinder
subfinder -d $1 | tee -a ~/domain.txt
# alive website with httpx
cat ~/domain.txt | httpx -o  ~/alive.txt
# scan with nuclei
cat ~/alive.txt |  nuclei -t  ~/nuclei-templates/  -o ~/bugbount/re.txt