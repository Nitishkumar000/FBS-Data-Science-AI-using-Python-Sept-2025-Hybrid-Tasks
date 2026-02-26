# Program to find the third angle of a triangle

angle1 = float(input("Enter first angle: "))
angle2 = float(input("Enter second angle: "))

# Sum of all angles in a triangle is 180 degrees
third_angle = 180 - (angle1 + angle2)

print("The third angle of the triangle is:", third_angle)
