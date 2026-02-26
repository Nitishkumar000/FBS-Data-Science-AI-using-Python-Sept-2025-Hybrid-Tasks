# Function to calculate area of rectangle
def calculate_area(length, width):
    area = length * width
    return area

# Taking input from the user
length = float(input("Enter the length of the rectangle: "))
width = float(input("Enter the width of the rectangle: "))

# Calling the function
result = calculate_area(length, width)

# Displaying the result
print("The area of the rectangle is:", result)