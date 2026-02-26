# 4. Calculate total cost of painting 4 walls
height = float(input("Enter height of wall (in meters): "))
width = float(input("Enter width of wall (in meters): "))
cost_per_sq_meter = float(input("Enter cost per square meter: "))

# 4 equal-sized walls
total_area = 4 * height * width
total_cost = total_area * cost_per_sq_meter

print("Total painting cost = Rs.", total_cost)
