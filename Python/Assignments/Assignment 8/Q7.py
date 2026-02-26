# Function to find sum of digits
def sum_of_digits(num):
    total = 0
    while num > 0:
        digit = num % 10
        total = total + digit
        num = num // 10
    return total

# Taking input from the user
number = int(input("Enter a number: "))

# Calling the function
result = sum_of_digits(number)

# Displaying the result
print("Sum of digits of the number is:", result)