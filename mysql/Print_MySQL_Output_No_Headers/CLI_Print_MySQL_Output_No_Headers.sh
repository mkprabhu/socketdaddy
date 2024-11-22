# 1. Use the 'silent' option to suppress headers and formatting
# Run this command from the CLI:
mysql -u username -p --silent --skip-column-names -e "SELECT * FROM your_table;

# 2. Redirect output to a file with no headers or formatting
# Example command (to be executed in a shell):
mysql -u username -p --silent --skip-column-names -e "SELECT * FROM your_table;" > output.txt