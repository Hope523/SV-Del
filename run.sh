cd ./real &&
python ../src/runR1.py chr19_300w.fa s150.sam nor150.sam -k 10 -s 5 -e 5000 - n 4 deletionSet.txt &&
chmod -R 777 run1.sh &&
./run1.sh
