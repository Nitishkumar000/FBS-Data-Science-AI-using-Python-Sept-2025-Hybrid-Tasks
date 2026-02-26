# Area and Perimeter of a Rectangle with a Semicircle on One Side
# Input
L = float(input("Enter length of rectangle: "))
B = float(input("Enter breadth of rectangle: "))

# Radius derived from breadth
R = B / 2

# Area
area_rectangle = L * B
area_semicircle = (3.14 * R**2) / 2
total_area = area_rectangle + area_semicircle

# Perimeter
perimeter = 2 * L + B + 3.14 * R

# Output
print(f"Total Area: {total_area:.2f}")
print(f"Total Perimeter: {perimeter:.2f}")
