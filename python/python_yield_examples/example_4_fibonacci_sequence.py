def fibonacci_sequence():
    a, b = 0, 1
    while True:
        yield a
        a, b = b, a + b

# Usage
fib = fibonacci_sequence()
for _ in range(10):
    print(next(fib))
