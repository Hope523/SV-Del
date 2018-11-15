1.Tools needed��samtools.

2.Execution steps��
Open the script file run.sh and modify second line of the commands according to the actual situation.��
python ../src/runR1.py ref.fa tumor.sam(bam) nor.sam(bam) -k k -s s -e e -n n deletionSet.txt

Parameter description��
Optional parameters
k �� k-mer length (default 10)
s �� k-mer support for candidate locations (default 5)
e �� unilateral extension length when constructing SNV reference (default 5000)
n �� the minimum read support number of each SNV read When separate SNVs  (default 4).

Required parameters
(1)ref.fa �� reference sequence
(2)tumor.sam(bam)��sam(bam) file of tumor
(3)nor.sam(bam) �� sam(bam) file of normol
(4)deletionSet.txt��Deletion that reported by existing method. The first column is the start position of deletion. The second column is deletion length.
You can use getD.py to process the existing method mentioned in the article.
command��python getD.py toolName delfile
toolName ��the name of existing method 
delfile �� the deletion reported by existing method
the output file of Pindel-C and DELLY2 need other steps which can be seen in the Example

Please put your data in the real folder.
Enter command after modification��./run.sh

3.Results:
case1.txt and case2.txt.


3.Example.
��1��Enter command in the example folder path��python getD.py delly s.tab
 (2) Input command: cd ..
��2��Input command��./runExample.sh
explanation of folder example��
getD.py��Program for handling deletion reported by existing method.
chr19_300w.fa��reference sequence.
nor150.sam��sam(bam) file of normol.
s150.sam��sam(bam) file of tumor.
pindel_result��the deletion reported by pindel-C. use command "python getDPindel.py" on pout_D. pout_D is the output file of Pindel-C.
s.tab��the deletion reported by delly. use command "svprops s.bcf > s.tab" on s.bcf. s.bcf is the output file of delly.
s150.sort.conf.bed��the deletion reported by swan.
s150indel.gatk.raw.vcf��the deletion reported by gatk.
Res: the result of the example.


