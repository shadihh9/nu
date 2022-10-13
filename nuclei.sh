#! /bin/bash
a=domin
read a
#sub enum with subfinder
subfinder -d $a | tee -a ~/domain.txt
# alive website with httpx
cat ~/domain.txt | httpx -o  ~/alive.txt
# scan with nuclei
cat ~/alive.txt |  nuclei -t  ~/nuclei-templates/  -o ~/bugbount/re.txt
