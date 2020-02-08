#!/bin/bash
#
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=2
#SBATCH --time=1:00:00
#SBATCH --mem=4GB
#SBATCH --job-name=Homework01
#SBATCH --output=slurm_%j.out

cp /scratch/work/jupyterhub/2020-SP-BIOL-GA.1130-001/class_share/homework01/cdg21c1_R1.fastq ./
module load fastqc/0.11.8
fastqc cdg21c1_R1.fastq

