1.Tools needed：samtools.
attention: For all compressed files, please unzip them before using them.

2.Execution steps：
Open the script file run.sh and modify second line of the commands according to the actual situation.：
python ../src/runR1.py ref.fa tumor.sam(bam) nor.sam(bam) -k k -s s -e e -n n deletionSet.txt

Parameter description：
Optional parameters
k ： k-mer length (default 10)
s ： k-mer support for candidate locations (default 5)
e ： unilateral extension length when constructing SNV reference (default 5000)
n ： the minimum read support number of each SNV read When separate SNVs  (default 4).

Required parameters
(1)ref.fa ： reference sequence
(2)tumor.sam(bam)：sam(bam) file of tumor
(3)nor.sam(bam) ： sam(bam) file of normol
(4)deletionSet.txt：Deletion that reported by existing method. The first column is the start position of deletion. The second column is deletion length.
You can use getD.py to process the output of existing method mentioned in the article.
command：python getD.py mehtodName delfile.
mehtodName ：the name of existing method.
delfile ： the deletion reported by existing method.
The output file of Pindel-C and DELLY2 need to be processed which can be seen in the Example.

Please create a folder named real and put your data in it.
Input command after modification：./run.sh

3.Results:
case1.txt：the deletion with clonal boundaries.
case2.txt: the deletion around SNVs.


3.Example.
（1）Input command in the example folder path：python getD.py delly s.tab
 (2) Input command: cd ..
（2）Input command：./runExample.sh
explanation of folder example：
getD.py：Program for handling deletion reported by existing method.
getDPindel.py: Program for handling deletion reported by Pindel-C.
chr19_300w.fa：reference sequence.
nor150.sam：sam file of normol.
s150.sam：sam file of tumor.
pindel_result：the deletion reported by Pindel-C. use command "python getDPindel.py" on pout_D, where pout_D is the output file of Pindel-C.
s.tab：the deletion reported by DELLY2. use command "svprops s.bcf > s.tab" on s.bcf. s.bcf is the output file of delly.
s150.sort.conf.bed：the deletion reported by SWAN.
s150indel.gatk.raw.vcf：the deletion reported by GATK.
Res: the result of the example.


