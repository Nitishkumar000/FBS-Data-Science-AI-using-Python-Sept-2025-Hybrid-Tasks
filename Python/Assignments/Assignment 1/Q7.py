# Program to find the roots of a quadratic equation

import math

a = float(input("Enter coefficient a: "))
b = float(input("Enter coefficient b: "))
c = float(input("Enter coefficient c: "))

# Calculate the discriminant
d = b*b - 4*a*c

if d > 0:
    # Two real and distinct roots
    root1 = (-b + math.sqrt(d)) / (2*a)
    root2 = (-b - math.sqrt(d)) / (2*a)
    print("Root 1 =", root1)
    print("Root 2 =", root2)

elif d == 0:
    # One real root (equal roots)
    root = -b / (2*a)
    print("Root 1 = Root 2 =", root)

else:
    # Complex roots
    real_part = -b / (2*a)
    imag_part = math.sqrt(abs(d)) / (2*a)
    print("Root 1 =", complex(real_part, imag_part))
    print("Root 2 =", complex(real_part, -imag_part))
