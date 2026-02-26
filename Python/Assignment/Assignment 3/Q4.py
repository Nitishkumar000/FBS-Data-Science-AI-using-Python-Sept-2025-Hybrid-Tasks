# Check if a triangle is valid based on its sides

a = float(input("Enter first side: "))
b = float(input("Enter second side: "))
c = float(input("Enter third side: "))

# A triangle is valid if the sum of any two sides is greater than the third side
if (a + b > c) and (a + c > b) and (b + c > a):
    print("The triangle is valid.")
else:
    print("The triangle is not valid.")
