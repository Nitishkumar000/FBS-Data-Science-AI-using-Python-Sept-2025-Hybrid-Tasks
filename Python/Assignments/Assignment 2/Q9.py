# Ask the user for two numbers
a = int(input("Enter the first number: "))
b = int(input("Enter the second number: "))

# Swap without using a third variable
a = a + b
b = a - b
a = a - b

# Show the swapped results
print(f"After swapping: a = {a}, b = {b}")
