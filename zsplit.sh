#!/bin/bash
# ZSplit (c) J~Net 2024
#
# ./zsplit.sh
#
#
#!/bin/bash

# Function to split the zip file
#!/bin/bash

# Function to split the zip file using 7zip
split_zip() {
    original_file="$1"
    split_size="$2"
    if [[ $original_file != *.zip ]]; then
        echo "Error: Archive name must end in .zip for splits"
        return 1
    fi
    7z a -v"${split_size}m" "${original_file%.*}_part" "$original_file"
}

# Function to reconstruct the zip file using 7zip
reconstruct_zip() {
    reconstructed_file="$1"
    original_file=$(echo "$reconstructed_file" | sed 's/_part.*//')
    7z x "${reconstructed_file}"* -o"${original_file}"
}

# Function for the main menu
main_menu() {
    echo "1. Split a zip file"
    echo "2. Reconstruct a zip file"
    echo "3. Exit"
}

# Function to validate input as a positive integer
validate_input() {
    input="$1"
    if ! [[ "$input" =~ ^[1-9][0-9]*$ ]]; then
        echo "Error: Invalid input. Please enter a positive integer."
        return 1
    fi
}

# Main script starts here
if [ $# -gt 0 ]; then
    choice=$1
else
    while true; do
        main_menu
        read -p "Choose an option: " choice

        case $choice in
            1)
                read -p "Enter the name of the input file to zip: " input_file
                if [ -f "$input_file" ]; then
                    while true; do
                        read -p "Enter the split size in MB (default is 24): " split_size
                        if [ -z "$split_size" ]; then
                            split_size=24
                            break
                        fi
                        validate_input "$split_size"
                        if [ $? -eq 0 ]; then
                            split_size=$((split_size * 1024))
                            break
                        fi
                    done
                    split_zip "$input_file" "$split_size"
                    if [ $? -eq 0 ]; then
                        echo "Zip file has been split successfully."
                    fi
                else
                    echo "Error: Input file not found!"
                fi
                ;;
            2)
                read -p "Enter the name of the input file for reconstruction: " input_file
                if ls "${input_file}"* 1> /dev/null 2>&1; then
                    reconstruct_zip "$input_file"
                    echo "Zip file has been reconstructed successfully."
                else
                    echo "Error: No split files found for reconstruction!"
                fi
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid option. Please choose again."
                ;;
        esac
    done
fi

