#!/bin/zsh

# Create the data files
cat <<EOL > data.txt
John Doe 30
Jane Smith 25
Alice Johnson 35
EOL

cat <<EOL > data.csv
John,Doe,30
Jane,Smith,25
Alice,Johnson,35
EOL

cat <<EOL > sales.txt
Alice 100
Bob 200
Alice 150
Charlie 300
Bob 50
Charlie 200
EOL

echo "Files created successfully:"
echo "- data.txt"
echo "- data.csv"
echo "- sales.txt"
echo
echo "You can now practice the exercises using these files!"