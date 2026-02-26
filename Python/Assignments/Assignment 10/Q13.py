numbers = [1, 2, 3, 4, 5, 6]
odd_list = []

for num in numbers:
    if num % 2 != 0:
        odd_list.append(num)

print("List after removing even numbers:", odd_list)