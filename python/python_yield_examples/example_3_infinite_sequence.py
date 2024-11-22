def infinite_even_numbers():
    num = 0
    while True:
        yield num
        num += 2

# Usage
even_numbers = infinite_even_numbers()
for _ in range(5):
    print(next(even_numbers))
