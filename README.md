
# ZSplit (c) J~Net 2024

./zsplit.sh



jay@jnetai:~/Documents/Scripts/Bash/zip_splitter $ ./zsplitV2.sh
1. Split a zip file
2. Reconstruct a zip file
3. Exit
Choose an option: 1
Enter the name of the input file to zip: llmsf3.zip
Enter the split size in MB (default is 24): 

7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
p7zip Version 16.02 (locale=en_GB.UTF-8,Utf16=on,HugeFiles=on,64 bits,4 CPUs LE)

Scanning the drive:
1 file, 77589325 bytes (74 MiB)

Creating archive: llmsf3_part.7z

Items to compress: 1

                   
Files read from disk: 1
Archive size: 77155533 bytes (74 MiB)
Everything is Ok
Zip file has been split successfully.
1. Split a zip file
2. Reconstruct a zip file
3. Exit
Choose an option: 2
Enter the name of the input file for reconstruction: llmsf3_part.7z.001

7-Zip [64] 16.02 : Copyright (c) 1999-2016 Igor Pavlov : 2016-05-21
p7zip Version 16.02 (locale=en_GB.UTF-8,Utf16=on,HugeFiles=on,64 bits,4 CPUs LE)

Scanning the drive for archives:
1 file, 25165824 bytes (24 MiB)

Extracting archive: llmsf3_part.7z.001
--         
Path = llmsf3_part.7z.001
Type = Split
Physical Size = 25165824
Volumes = 4
Total Physical Size = 77155533
----
Path = llmsf3_part.7z
Size = 77155533
--
Path = llmsf3_part.7z
Type = 7z
Physical Size = 77155533
Headers Size = 130
Method = LZMA2:24
Solid = -
Blocks = 1

Everything is Ok 

Size:       77589325
Compressed: 77155533
Zip file has been reconstructed successfully.
1. Split a zip file
2. Reconstruct a zip file
3. Exit
