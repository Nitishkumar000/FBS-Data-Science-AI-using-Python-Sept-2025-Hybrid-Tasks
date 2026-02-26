# Recursive function to calculate power
def power(m, n):
    if n == 0:
        return 1
    else:
        return m * power(m, n - 1)

# Taking input from user
m = int(input("Enter the value of m: "))
n = int(input("Enter the value of n: "))

# Calling the function
result = power(m, n)

# Displaying the result
print(m, "to the power", n, "is:", result)