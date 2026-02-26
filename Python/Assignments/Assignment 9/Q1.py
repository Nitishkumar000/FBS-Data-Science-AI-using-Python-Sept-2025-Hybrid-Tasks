    # Function to find factorial using recursion
def factorial(num):
    if num == 0 or num == 1:
        return 1
    else:
        return num * factorial(num - 1)

# Function to find sum of factorial series using recursion
def sum_of_factorials(n):
    if n == 0:
        return 0
    else:
        return factorial(n) + sum_of_factorials(n - 1)

# Taking input from user
n = int(input("Enter the value of n: "))

# Calling the function
result = sum_of_factorials(n)

# Displaying the result
print("Sum of the series is:", result)