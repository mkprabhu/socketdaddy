# Generator expression to yield squares of numbers from 0 to 4
squares = (x * x for x in range(5))

# Usage
for square in squares:
    print(square)
