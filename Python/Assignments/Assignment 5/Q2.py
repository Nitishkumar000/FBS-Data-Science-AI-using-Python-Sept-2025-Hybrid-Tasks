# Ask how many students
num_students = int(input("Enter number of students: "))

total_percentage = 0

for i in range(1, num_students + 1):
    print(f"\nEnter marks for Student {i}")

    total_marks = 0

    # Accept marks of 5 subjects
    for j in range(1, 6):
        marks = float(input(f"Enter marks for subject {j}: "))
        total_marks += marks

    # Calculate percentage
    percentage = (total_marks / 500) * 100
    total_percentage += percentage

    print(f"Percentage of Student {i}: {percentage:.2f}%")

# Calculate average percentage of all students
average_percentage = total_percentage / num_students

print("\n----------------------------------")
print(f"Average Percentage of Students: {average_percentage:.2f}%")
