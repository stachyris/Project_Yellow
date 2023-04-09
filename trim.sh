#PBS -N WBS_Trim
#PBS -q iiser
#PBS -l select=1:ncpus=30
#PBS -l walltime=24:00:00
#PBS -V
#PBS -o WBS_Yellow_Trim.o
#PBS -e WBS_Yellow_Trim.err
#PBS -m abe
#PBS -M vinaykl@students.iisertirupati.ac.in

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR

cd /home/naman/vinay/Project_Yellow/

READ1_IN=./30307400378-WBS1-Dr-VV-Robin-NCGM-1536-11-2_S66_L002_R1_001.fastq.gz
READ2_IN=./30307400378-WBS1-Dr-VV-Robin-NCGM-1536-11-2_S66_L002_R2_001.fastq.gz

BASE=WBS_Yellow

TruSeq_Adapter=/home/naman/soft/Trimmomatic-0.39/adapters/TruSeq3-PE.fa

/home/naman/soft/jre1.8.0_311/bin/java -jar ~/soft/Trimmomatic-0.39/trimmomatic-0.39.jar PE -phred33 -trimlog ${BASE}_trim.log -summary ${BASE}_summary.txt ${READ1_IN} ${READ2_IN} ${BASE}_R1_paired.fq.gz ${BASE}_R1_unpaired.fq.gz ${BASE}_R2_paired.fq.gz ${BASE}_R2_unpaired.fq.gz ILLUMINACLIP:${TruSeq_Adapter}:2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36
