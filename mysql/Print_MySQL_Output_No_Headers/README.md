
# Print MySQL Output Without Headers or Column Separators

This folder contains two files demonstrating how to format MySQL output without headers or column separators. These examples are based on the guide published on [SocketDaddy.com](https://socketdaddy.com/linux/print-mysql-output-without-headers-or-column-separators/).

## Files Included

1. **`CLI_Print_MySQL_Output_No_Headers.sh`**  
   A shell script showcasing command-line methods to suppress headers and format MySQL output. It demonstrates:  
   - Using the `--silent` and `--skip-column-names` options in MySQL commands.
   - Redirecting output to a file for further use.

2. **`Print_MySQL_Output_No_Headers.sql`**  
   An SQL script demonstrating query-based methods to format output. It includes:  
   - Using `CONCAT` in SQL queries to customize output.
   - Writing formatted output to a file using `INTO OUTFILE`.

## Usage

### Running the Shell Script
1. Ensure MySQL is installed and accessible via the CLI.
2. Update the script with your MySQL username, password, and table details.
3. Execute the script:
   ```bash
   bash CLI_Print_MySQL_Output_No_Headers.sh
   ```

### Running the SQL Script
1. Open the `Print_MySQL_Output_No_Headers.sql` file in your preferred SQL editor or MySQL client.
2. Execute the queries as needed.

## Learn More

For detailed explanations and use cases, refer to the original guide on [SocketDaddy.com](https://socketdaddy.com/linux/print-mysql-output-without-headers-or-column-separators/).

## Contribution

If you have suggestions for improvements or additional examples, feel free to contribute by opening a pull request or raising an issue.

## Licensing

This content is provided under the [MIT License](LICENSE). You are free to use, modify, and distribute these scripts with proper attribution.
