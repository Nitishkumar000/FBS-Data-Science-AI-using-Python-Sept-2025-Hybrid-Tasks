# Check if a triangle is valid based on its angles

a = float(input("Enter first angle: "))
b = float(input("Enter second angle: "))
c = float(input("Enter third angle: "))

if a + b + c == 180:
    print("The triangle is valid.")
else:
    print("The triangle is not valid.")
