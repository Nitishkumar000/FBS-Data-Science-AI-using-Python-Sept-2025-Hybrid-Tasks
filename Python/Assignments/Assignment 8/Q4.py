    # Function to find sum of odd numbers
def sum_odd_numbers(n):
    total = 0
    for i in range(1, n + 1):
        if i % 2 != 0:
            total = total + i
    return total

# Taking input from the user
n = int(input("Enter the value of n: "))

# Calling the function
result = sum_odd_numbers(n)

# Displaying the result
print("Sum of all odd numbers between 1 and", n, "is:", result)