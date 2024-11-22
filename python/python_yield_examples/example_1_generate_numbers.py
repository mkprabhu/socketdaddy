def generate_numbers(limit):
    for num in range(limit):
        yield num

# Usage
for number in generate_numbers(5):
    print(number)
