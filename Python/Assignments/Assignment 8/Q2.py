# Function to calculate area of a circle
def calculate_area(radius):
    pi = 3.14
    area = pi * radius * radius
    return area

# Taking input from the user
radius = float(input("Enter the radius of the circle: "))

# Calling the function
result = calculate_area(radius)

# Displaying the result
print("The area of the circle is:", result)