
-- Example: Print MySQL Output Without Headers or Column Separators

-- 1. Use the 'silent' option to suppress headers and formatting
-- Run this command from the MySQL CLI:
-- mysql -u username -p --silent --skip-column-names -e "SELECT * FROM your_table;"

-- 2. Redirect output to a file with no headers or formatting
-- Example command (to be executed in a shell):
-- mysql -u username -p --silent --skip-column-names -e "SELECT * FROM your_table;" > output.txt

-- 3. Use CONCAT to format output directly in the SQL query
SELECT CONCAT(col1, ' ', col2, ' ', col3) AS formatted_output
FROM your_table;

-- 4. Combine CONCAT with OUTFILE to export formatted data
-- Ensure the MySQL server has write permissions to the target directory
SELECT CONCAT(col1, ',', col2, ',', col3)
INTO OUTFILE '/tmp/formatted_output.csv'
FIELDS TERMINATED BY ''
LINES TERMINATED BY '\n'
FROM your_table;

-- Note: Replace 'username', 'your_table', and file paths with appropriate values for your environment.
