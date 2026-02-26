# Program to find area and circumference of a circle

import math

radius = float(input("Enter the radius of the circle: "))

area = math.pi * radius * radius              # πr²
circumference = 2 * math.pi * radius          # 2πr

print("Area of the circle =", area)
print("Circumference of the circle =", circumference)
