def read_large_file(file_path):
    with open(file_path, 'r') as file:
        for line in file:
            yield line.strip()

# Usage
# Replace 'large_file.txt' with your file path
for line in read_large_file('large_file.txt'):
    print(line)
