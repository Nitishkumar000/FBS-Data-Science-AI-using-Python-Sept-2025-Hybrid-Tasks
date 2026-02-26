# Ask the user for hours, minutes, and seconds
hours = int(input("Enter hours: "))
minutes = int(input("Enter minutes: "))
seconds = int(input("Enter seconds: "))

# Convert everything to seconds
total_seconds = hours * 3600 + minutes * 60 + seconds

# Display the result
print(f"Total seconds: {total_seconds}")