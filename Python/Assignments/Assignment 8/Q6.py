# Function to print Fibonacci series
def fibonacci(n):
    a = 1
    b = 1

    if n >= 1:
        print(a, end=" ")
    if n >= 2:
        print(b, end=" ")

    for i in range(3, n + 1):
        c = a + b
        print(c, end=" ")
        a = b
        b = c


# Taking input from the user
n = int(input("Enter the number of terms: "))

# Calling the function
fibonacci(n)