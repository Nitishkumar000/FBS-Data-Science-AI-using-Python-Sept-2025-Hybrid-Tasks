# Ask the user for the distance in feet and inches
feet = int(input("How many feet? "))
inches = int(input("How many inches? "))

# First convert everything to inches
total_inches = feet * 12 + inches

# Now convert inches to centimeters
total_cm = total_inches * 2.54

# Break the total centimeters into meters and leftover centimeters
meters = int(total_cm // 100)
centimeters = total_cm % 100

# Show the final result
print(f"That's about {meters} meters and {centimeters:.2f} centimeters.")
