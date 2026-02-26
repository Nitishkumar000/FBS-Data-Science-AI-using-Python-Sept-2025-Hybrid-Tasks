# 3. Calculate fencing cost
import math

radius = 20
length = 50
breadth = 40
cost_per_meter = 35
rounds = 5

# Perimeter of circle + rectangle
circle_perimeter = 2 * math.pi * radius
rectangle_perimeter = 2 * (length + breadth)

total_length = circle_perimeter + rectangle_perimeter
total_cost = total_length * cost_per_meter * rounds

print("Total cost of fencing = Rs.", round(total_cost, 2))
