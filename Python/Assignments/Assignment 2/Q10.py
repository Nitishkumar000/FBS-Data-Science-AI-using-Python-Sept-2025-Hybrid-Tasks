# Ask the user for a three-digit number
number = int(input("Enter a three-digit number: "))

# Extract digits
hundreds = number // 100
tens = (number // 10) % 10
ones = number % 10

# Reverse the number
reversed_number = ones * 100 + tens * 10 + hundreds

# Show the reversed number
print(f"The reversed number is: {reversed_number}")
