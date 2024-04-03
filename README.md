# ZSplit

ZSplit is a bash script that allows you to split and reconstruct zip files using 7-Zip.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/your_username/zip_splitter.git
    ```

2. Navigate to the directory:

    ```bash
    cd zip_splitter
    ```

3. Run the script:

    ```bash
    ./zsplit.sh
    ```

## Features

- **Split a Zip File:** Choose the option to split a zip file, specify the input file, and the split size (default is 24 MB).
- **Reconstruct a Zip File:** Choose the option to reconstruct a zip file, and provide the name of the input file for reconstruction.
- **Exit:** Choose the option to exit the script.

## Example

```bash
./zsplit.sh

1. Split a zip file
2. Reconstruct a zip file
3. Exit
Choose an option: 1
Enter the name of the input file to zip: llmsf3.zip
Enter the split size in MB (default is 24):

Zip file has been split successfully.

1. Split a zip file
2. Reconstruct a zip file
3. Exit
Choose an option: 2
Enter the name of the input file for reconstruction: llmsf3_part.7z.001

Zip file has been reconstructed successfully.

1. Split a zip file
2. Reconstruct a zip file
3. Exit
