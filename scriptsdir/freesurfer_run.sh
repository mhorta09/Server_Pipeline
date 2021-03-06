#!/bin/bash
#SBATCH --account=[name_of_group_account]
#SBATCH --qos=[name_of_group_account]
#SBATCH --job-name=freesurfer
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=[email_associated_with_hpg_account]
#SBATCH --ntasks=1
#SBATCH --mem=8gb
#SBATCH --time=24:00:00
#SBATCH --output=freesurfer_%j.out
pwd; hostname; date
 
module load freesurfer/5.3.0

SUBJ=subject
 
recon-all -subjid ${SUBJ} -i ${SUBJ}/T1.nii -all -sd ${SUBJ}
 
date
