# Program to input 5 subject marks and display grade

# Taking input of 5 subject marks
m1 = float(input("Enter marks of subject 1: "))
m2 = float(input("Enter marks of subject 2: "))
m3 = float(input("Enter marks of subject 3: "))
m4 = float(input("Enter marks of subject 4: "))
m5 = float(input("Enter marks of subject 5: "))

# Calculate total and percentage
total = m1 + m2 + m3 + m4 + m5
percent = total / 5

# Determine grade based on percentage
if percent >= 75:
    print("Grade: Distinction")
elif percent >= 60:
    print("Grade: First Class")
elif percent >= 50:
    print("Grade: Second Class")
elif percent >= 40:
    print("Grade: Pass Class")
else:
    print("Grade: Fail")
