This Python script reads data from a CSV file ('1kSalesRec.csv'), processes it to compute two metrics, and then prints the results. Here's a breakdown:

1. **Function Definitions:**
   - `count(predicate, itr)`: Counts the number of elements in `itr` that satisfy the `predicate` function.
   - `average(itr)`: Computes the average of numbers in `itr`.

2. **Reading CSV Data:**
   - The `csv.reader` reads rows from the CSV file ('1kSalesRec.csv'). The first row is taken as `fields`.

3. **Calculations:**
   - **Count of Rows for Belgium:**
     - `count_belgium = count(lambda x: x[1] == "Belgium", reader)`: Uses `count` function to count rows where the second column (index 1) equals "Belgium".

   - **Average of Column 14 for Portugal:**
     - `avg_portugal = average(map(lambda x: float(x[13]), filter(lambda x: x[1] == "Portugal", reader)))`: Filters rows where the second column equals "Portugal", extracts the 14th column (index 13), converts them to floats, and computes their average using the `average` function.

4. **Output:**
   - `print(count_belgium)`: Prints the count of rows where the country is Belgium.
   - `print(avg_portugal)`: Prints the average of values from column 14 for rows where the country is Portugal.

In summary, the script uses CSV reading, filtering, mapping, and functional programming techniques (like `filter`, `map`, `reduce`) to process data and compute specific statistics from a CSV file.