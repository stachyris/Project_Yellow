#PBS -N WBS_Assembly
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -l walltime=128:00:00
#PBS -V
#PBS -o WBS_Yellow_assembly.o
#PBS -e WBS_Yellow_assembly.err
#PBS -m abe
#PBS -M vinaykl@students.iisertirupati.ac.in

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR

cd /home/naman/vinay/Project_Yellow/

mpirun -np 40 /home/Workshop-Genomics/MEGAHIT-1.2.9-Linux-x86_64-static/bin/megahit -1 WBS_Yellow_R1_paired.fq.gz -2 WBS_Yellow_R2_paired.fq.gz -o ./assembly -t 40
