# AWKward
This are some practice exercises for using awk. You can clone the repo and practice or just run thr script and it will create the files for you in the directory you run the script in.

```zsh
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
```

### How to Use This Script

1. Save the script to a file, for example, `create_files.zsh`.
2. Make the script executable:

   ```zsh
   chmod +x create_files.zsh
   ```

3. Run the script:

   ```zsh
   ./create_files.zsh
   ```

4. After running the script, the following files will be created in your current directory:
   - `data.txt`
   - `data.csv`
   - `sales.txt`

You can now use these files to practice the `awk` exercises at your own pace.

---

### Exercises to Try

Here are the exercises you can practice using the created files:

#### Using `data.txt`:
1. **Print the first and last names:**
   ```zsh
   awk '{print $1, $2}' data.txt
   ```

2. **Filter rows where age is greater than 30:**
   ```zsh
   awk '$3 > 30 {print $0}' data.txt
   ```

3. **Calculate the total age:**
   ```zsh
   awk '{sum += $3} END {print sum}' data.txt
   ```

4. **Print lines where the first name is "Jane":**
   ```zsh
   awk '/Jane/ {print $0}' data.txt
   ```

5. **Print the line number along with the first name:**
   ```zsh
   awk '{print NR, $1}' data.txt
   ```

6. **Print a custom message based on age:**
   ```zsh
   awk '{if ($3 > 30) print $1, "is older than 30"; else print $1, "is 30 or younger"}' data.txt
   ```

7. **Count the number of people with the same last name:**
   ```zsh
   awk '{count[$2]++} END {for (name in count) print name, count[name]}' data.txt
   ```

#### Using `data.csv`:
8. **Print the first and last names (comma-separated):**
   ```zsh
   awk -F, '{print $1, $2}' data.csv
   ```

#### Using `sales.txt`:
9. **Calculate the total sales for each person:**
   ```zsh
   awk '{sales[$1] += $2} END {for (name in sales) print name, sales[name]}' sales.txt
   ```

10. **Find the person with the highest total sales:**
    ```zsh
    awk '{sales[$1] += $2} END {for (name in sales) print name, sales[name]}' sales.txt | sort -k2,2nr | head -n1
    ```
