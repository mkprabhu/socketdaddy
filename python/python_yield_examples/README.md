
# Understanding the Yield Keyword in Python

This folder contains example Python scripts to help you understand the `yield` keyword and how it is used to create generator functions in Python. These scripts are inspired by the guide published on [SocketDaddy.com](https://socketdaddy.com/python/understanding-the-yield-keyword-in-python/).

## Purpose

The purpose of these scripts is to demonstrate:
1. How to use `yield` to create generators.
2. Practical use cases for `yield`, such as handling large data streams, creating infinite sequences, and implementing custom iterators.

## Scripts Overview

### 1. Generating a Sequence of Numbers
File: `example_1_generate_numbers.py`
- Generates a sequence of numbers up to a specified limit.
- Demonstrates a simple use case for the `yield` keyword.

### 2. Reading a Large File Line by Line
File: `example_2_read_large_file.py`
- Efficiently reads a large file line by line without loading the entire file into memory.
- Useful for processing big datasets.

### 3. Generating an Infinite Sequence
File: `example_3_infinite_sequence.py`
- Generates an infinite sequence of even numbers.
- Demonstrates how to use `yield` in a loop that runs indefinitely.

### 4. Fibonacci Sequence Generator
File: `example_4_fibonacci_sequence.py`
- Implements a generator for the Fibonacci sequence.
- Useful for understanding how `yield` can handle complex calculations.

### 5. Generator Expression
File: `example_5_generator_expression.py`
- Shows a generator expression to compute squares of numbers in a range.
- Highlights an alternative to generator functions.

## Usage

1. Clone or download this folder.
2. Run any script using Python:
   ```bash
   python example_1_generate_numbers.py
   ```
3. Check the `example_outputs.txt` file for expected outputs.

## Learn More

For a detailed explanation of the `yield` keyword and its applications, check out the original guide on [SocketDaddy.com](https://socketdaddy.com/python/understanding-the-yield-keyword-in-python/).

## Contribution

If you have suggestions for improvements or additional examples, feel free to contribute by opening a pull request or raising an issue.

## Licensing

This content is provided under the [MIT License](LICENSE). You are free to use, modify, and distribute these scripts with proper attribution.
