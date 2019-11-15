#!/bin/bash
#PBS -l nodes=1:ppn=8,walltime=10:00:00
#PBS -q batch
#PBS -N aggreg
cd $PBS_O_WORKDIR

export PATH=/projects/nehard/SingleCell/cellranger/cellranger-2.1.0:$PATH
cellranger aggr --id=IL7R_aggreg \
                  --csv=libaries.csv \
                  --normalize=mapped
