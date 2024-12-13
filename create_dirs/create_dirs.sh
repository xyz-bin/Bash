#!/bin/bash

# Array of directories
dirs=("DIR1" "DIR2" "DIR3")

# Loop through directories
for dir in "${dirs[@]}"; do
    # Create directory
    mkdir -p "$dir"
    echo "Created directory: $dir"
    
    # Create files in each directory
    for file in {1..3}; do
        touch "$dir/file$file"
        echo "Created file: $dir/file$file"
    done
done

echo "All directories and files created successfully."
