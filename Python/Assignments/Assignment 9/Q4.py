# Recursive function to find sum of n numbers
def sum_n_numbers(n):
    if n == 0:
        return 0
    else:
        return n + sum_n_numbers(n - 1)

# Taking input from user
n = int(input("Enter the value of n: "))

# Calling the function
result = sum_n_numbers(n)

# Displaying the result
print("Sum of n numbers is:", result)