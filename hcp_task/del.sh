#!/bin/bash

# Define the base directory
base_dir="subjects"

# Loop through each subject ID directory
for subject_dir in "$base_dir"/*; do
    if [ -d "$subject_dir" ]; then  # Check if it's a directory
        echo "Processing subject directory: $subject_dir"
        
        # Loop through each subdirectory in the subject directory
        for sub_dir in "$subject_dir"/*; do
            if [ -d "$sub_dir" ]; then  # Check if it's a directory
                # Check if the directory name is not GAMBLING
                if [[ "$(basename "$sub_dir")" != "GAMBLING" ]]; then
                    echo "Deleting directory: $sub_dir"
                    rm -r "$sub_dir"  # Delete the directory
                fi
            fi
        done
    fi
done

echo "Cleanup complete."
