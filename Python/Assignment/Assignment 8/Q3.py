# Function to find sum of 1 + 2 + 3 + ... + n
def sum_natural(n):
    total = 0
    for i in range(1, n + 1):
        total = total + i
    return total


# Function to find factorial of a number
def factorial(num):
    fact = 1
    for i in range(1, num + 1):
        fact = fact * i
    return fact


# Function to find sum of 1! + 2! + 3! + ... + n!
def sum_factorial(n):
    total = 0
    for i in range(1, n + 1):
        total = total + factorial(i)
    return total


# Function to find sum of 1^1 + 2^2 + 3^3 + ... + n^n
def sum_power(n):
    total = 0
    for i in range(1, n + 1):
        total = total + (i ** i)
    return total


# Taking input from user
n = int(input("Enter the value of n: "))

# Calling functions and displaying results
print("Sum of series 1 + 2 + 3 + ... + n =", sum_natural(n))
print("Sum of series 1! + 2! + 3! + ... + n! =", sum_factorial(n))
print("Sum of series 1^1 + 2^2 + 3^3 + ... + n^n =", sum_power(n))