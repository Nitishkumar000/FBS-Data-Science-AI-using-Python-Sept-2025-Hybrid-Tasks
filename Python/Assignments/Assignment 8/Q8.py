# Function to find reverse of a number
def reverse_number(num):
    rev = 0
    while num > 0:
        digit = num % 10
        rev = rev * 10 + digit
        num = num // 10
    return rev

# Taking input from the user
number = int(input("Enter a number: "))

# Calling the function
result = reverse_number(number)

# Displaying the result
print("Reverse of the number is:", result)