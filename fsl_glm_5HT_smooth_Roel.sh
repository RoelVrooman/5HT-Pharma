#!/bin/bash

root_dir="/project/4180000.23/Fleur_GS"

# Define an array of input files
input_files=(
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT1A.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT1B.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT1D.nii.gz"   
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT1E.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT1F.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT2A.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT2B.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT2C.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT4.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT4.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT5A.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT5B.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT6.nii.gz"
    "$root_dir/DR/DR_5HT_smooth_All/merged_all_groups/5HT7.nii.gz"
)

# Define an array of 'matrix' files --> using the original DR template
matrix_files=(
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0000.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0001.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0002.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0003.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0004.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0005.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0006.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0007.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0008.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0009.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0010.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0011.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0012.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files/5HTR_exp_zscored_merged_smooth08_0013.nii.gz"
)

# Define an array of output files
output_files=(
    "$root_dir/fsl_glm/5HT_smooth/5HT1A.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT1B.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT1D.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT1E.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT1F.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT2A.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT2B.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT2C.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT3.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT4.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT5A.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT5B.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT6.txt"
    "$root_dir/fsl_glm/5HT_smooth/5HT7.txt"
)

# Define an array of mask files
mask_files=(
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0000.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0001.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0002.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0003.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0004.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0005.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0006.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0007.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0008.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0009.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0010.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0011.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0012.nii.gz"
    "/project/4180000.23/fMRI_Wessel/DR_5HT/Smoothed_maps/Split_files_bin/5HTR_exp_zscored_merged_smooth08_bin_0013.nii.gz"
)

# Loop over the input files and run the command for each one
for ((i=0; i<${#input_files[@]}; i++)); do

    input_file="${input_files[$i]}"
    matrix_file="${matrix_files[$i]}"
    output_file="${output_files[$i]}"
    mask_file="${mask_files[$i]}"

    # Run the randomise command with the current input, output, and mask
    fsl_glm -i "$input_file" -o "$output_file" -d "$matrix_file" -m "$mask_file" 

    echo "Randomise command executed for input: $input_file, output: $output_file, mask: $mask_file"

    done

   
