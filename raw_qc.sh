#PBS -N Yellow_QC
#PBS -q iiser
#PBS -l select=1:ncpus=30
#PBS -l walltime=96:00:00
#PBS -V
#PBS -o Yellow_QC.o
#PBS -e Yellow_QC.err
#PBS -m abe
#PBS -M vinaykl@students.iisertirupati.ac.in

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR

cd /home/naman/vinay/Project_Yellow/

/home/Workshop-Genomics/softs/FastQC/fastqc --outdir ./qc -t 30 ./30307400378-WBS1-Dr-VV-Robin-NCGM-1536-11-2_S66_L002_R1_001.fastq.gz ./30307400378-WBS1-Dr-VV-Robin-NCGM-1536-11-2_S66_L002_R2_001.fastq.gz
