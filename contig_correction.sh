#PBS -N WBS_ragtag_correction
#PBS -q iiser
#PBS -l select=1:ncpus=40
#PBS -l walltime=128:00:00
#PBS -V
#PBS -o WBS_Yellow_correction.o
#PBS -e WBS_Yellow_correction.err
#PBS -m abe
#PBS -M vinaykl@students.iisertirupati.ac.in

ncores=`cat $PBS_NODEFILE|wc -l`


#source /home/app/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh intel64
#source /home/app/intel/compilers_and_libraries/linux/mkl/bin/mklvars.sh intel64

cd $PBS_O_WORKDIR

cd /home/naman/vinay/Project_Yellow/

python3 /home/naman/anaconda3/bin/ragtag_correct.py ./Nilgiri_Sholakili_v.0.2.fasta ./WBS_Yellow_v1.fasta -t 40 --aligner /home/naman/soft/minimap2-2.24_x64-linux/minimap2 -u -o ./ragtag_contig_correction
