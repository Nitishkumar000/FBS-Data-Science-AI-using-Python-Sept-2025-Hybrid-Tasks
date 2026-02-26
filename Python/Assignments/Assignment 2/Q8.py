# Ask the user for two numbers
a = int(input("Enter the first number: "))
b = int(input("Enter the second number: "))

# Swap the numbers using a third variable
temp = a
a = b
b = temp

# Show the swapped results
print(f"After swapping: a = {a}, b = {b}")
