# Program to find maximum and minimum element in a list

numbers = [25, 10, 45, 5, 30]

# assume first element is both max and min
maximum = numbers[0]
minimum = numbers[0]

for num in numbers:
    if num > maximum:
        maximum = num
    if num < minimum:
        minimum = num

print("Maximum element:", maximum)
print("Minimum element:", minimum)