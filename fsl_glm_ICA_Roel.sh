#!/bin/bash

root_dir="/project/4180000.23/Fleur_GS"

# Define an array of input files
input_files=(
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA1.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA2.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA3.nii.gz"   
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA4.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA5.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA6.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA7.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA8.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA9.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA10.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA11.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA12.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA13.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA14.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA15.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA16.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA17.nii.gz"
    "$root_dir/DR/DR_ICAs/Merged_all_groups/ICA18.nii.gz"
)

# Define an array of 'matrix' files --> using the original DR template
matrix_files=(
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0000.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0001.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0002.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0003.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0004.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0005.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0006.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0007.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0008.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0009.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0010.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0011.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0012.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0013.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0014.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0015.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0016.nii.gz"
    "/project/4180000.23/fMRI_Wessel/Template/DSURQE_zoom_split/DSURQE_zoom_0017.nii.gz"
)

# Define an array of output files
output_files=(
    "$root_dir/fsl_glm/ICA/ICA1.txt"
    "$root_dir/fsl_glm/ICA/ICA2.txt"
    "$root_dir/fsl_glm/ICA/ICA3.txt"
    "$root_dir/fsl_glm/ICA/ICA4.txt"
    "$root_dir/fsl_glm/ICA/ICA5.txt"
    "$root_dir/fsl_glm/ICA/ICA6.txt"
    "$root_dir/fsl_glm/ICA/ICA7.txt"
    "$root_dir/fsl_glm/ICA/ICA8.txt"
    "$root_dir/fsl_glm/ICA/ICA9.txt"
    "$root_dir/fsl_glm/ICA/ICA10.txt"
    "$root_dir/fsl_glm/ICA/ICA11.txt"
    "$root_dir/fsl_glm/ICA/ICA12.txt"
    "$root_dir/fsl_glm/ICA/ICA13.txt"
    "$root_dir/fsl_glm/ICA/ICA14.txt"
    "$root_dir/fsl_glm/ICA/ICA15.txt"
    "$root_dir/fsl_glm/ICA/ICA16.txt"
    "$root_dir/fsl_glm/ICA/ICA17.txt"
    "$root_dir/fsl_glm/ICA/ICA18.txt"
)

# Define an array of mask files
mask_files=(
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_1.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_2.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_3.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_4.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_5.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_6.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_7.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_8.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_9.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_10.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_11.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_12.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_13.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_14.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_15.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_16.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_17.nii.gz"
    "$root_dir/DR/ICAs_bin/prior_resting_state_binary_zoom6_18.nii.gz"
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

   
