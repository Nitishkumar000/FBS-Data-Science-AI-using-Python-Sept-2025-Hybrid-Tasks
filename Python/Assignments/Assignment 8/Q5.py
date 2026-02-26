# Function to check whether a number is prime
def is_prime(num):
    if num <= 1:
        return False
    for i in range(2, num):
        if num % i == 0:
            return False
    return True


# Function to calculate sum of prime numbers
def sum_prime_numbers(n):
    total = 0
    for i in range(2, n + 1):
        if is_prime(i):
            total = total + i
    return total


# Taking input from the user
n = int(input("Enter the value of n: "))

# Calling the function
result = sum_prime_numbers(n)

# Displaying the result
print("Sum of all prime numbers between 1 and", n, "is:", result)