numbers = [1, 2, 3, 2, 4, 2, 5]
remove_element = int(input("Enter element to remove: "))

new_list = []

for num in numbers:
    if num != remove_element:
        new_list.append(num)

print("List after removal:", new_list)