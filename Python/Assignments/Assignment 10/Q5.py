numbers = [2, 5, 3, 5, 7, 5]
search = int(input("Enter number to search: "))

count = 0
found = False

for num in numbers:
    if num == search:
        count = count + 1
        found = True

if found:
    print("Element found", count, "times")
else:
    print("Element not found")