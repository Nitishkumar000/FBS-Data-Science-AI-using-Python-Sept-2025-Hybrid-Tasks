# Wall Painting Cost Calculator

# Input
area = float(input("Enter area of one wall (in sq. meters): "))

# Input cost rates
cost_interior = float(input("Enter cost per sq. meter for interior walls: "))
cost_exterior = float(input("Enter cost per sq. meter for exterior walls: "))

# Number of walls (given)
num_interior = 8
num_exterior = 7

# Step 4: Calculate total costs
total_interior = area * cost_interior * num_interior
total_exterior = area * cost_exterior * num_exterior
total_cost = total_interior + total_exterior

# Step 5: Output
print("\n--- Wall Painting Cost Summary ---")
print(f"Interior walls : {num_interior}")
print(f"Exterior walls : {num_exterior}")
print(f"Total cost for interior walls : ₹{total_interior:.2f}")
print(f"Total cost for exterior walls : ₹{total_exterior:.2f}")
print(f"Overall total painting cost   : ₹{total_cost:.2f}")
