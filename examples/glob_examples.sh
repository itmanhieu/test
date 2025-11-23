#!/bin/bash

# Create some example files and directories for demonstration
mkdir -p test_files/{dir1,dir2,dir3}
touch test_files/file1.txt
touch test_files/file2.txt
touch test_files/file3.md
touch test_files/dir1/nested1.txt
touch test_files/dir2/nested2.txt
touch test_files/dir2/nested2.md
touch test_files/dir3/nested3.txt
touch test_files/dir3/nested3.md

echo "Basic glob patterns examples:"
echo "----------------------------"

# Match all .txt files in current directory
echo "1. All .txt files in test_files:"
echo "Pattern: test_files/*.txt"
ls test_files/*.txt

# Match all .txt files in any subdirectory (one level deep)
echo -e "\n2. All .txt files in immediate subdirectories:"
echo "Pattern: test_files/*/*.txt"
ls test_files/*/*.txt

# Match all .md files recursively
echo -e "\n3. All .md files recursively:"
echo "Pattern: test_files/**/*.md"
ls test_files/**/*.md

# Match files with specific patterns
echo -e "\n4. Files that start with 'file':"
echo "Pattern: test_files/file*"
ls test_files/file*

# Match files with number in name
echo -e "\n5. Files with numbers in their names:"
echo "Pattern: test_files/*[0-9]*"
ls test_files/*[0-9]*

# Match either .txt or .md files
echo -e "\n6. Files with either .txt or .md extension:"
echo "Pattern: test_files/*.{txt,md}"
ls test_files/*.{txt,md}

# Clean up
echo -e "\nCleaning up..."
rm -rf test_files

echo "Done!"