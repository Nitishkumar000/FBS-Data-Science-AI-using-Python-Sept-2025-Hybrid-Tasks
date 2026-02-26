numbers = [1, 2, 3, 4, 5, 6]
even_list = []
odd_list = []

for num in numbers:
    if num % 2 == 0:
        even_list.append(num)
    else:
        odd_list.append(num)

print("Even list:", even_list)
print("Odd list:", odd_list)