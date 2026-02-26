# Ask the user for a three-digit number
number = int(input("Enter a three-digit number: "))

# Extract digits
hundreds = number // 100
tens = (number // 10) % 10
ones = number % 10

# Calculate the sum of digits
digit_sum = hundreds + tens + ones

# Show the result
print(f"The sum of the digits is: {digit_sum}")
