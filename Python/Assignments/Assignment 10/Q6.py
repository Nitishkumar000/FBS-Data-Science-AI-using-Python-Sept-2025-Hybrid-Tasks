numbers = [1, 2, 2, 3, 4, 3, 5]
unique_list = []

for num in numbers:
    if num not in unique_list:
        unique_list.append(num)

print("List without duplicates:", unique_list)