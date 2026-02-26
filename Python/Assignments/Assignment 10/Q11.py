numbers = [10, 20, 30, 40, 60, 90]
m = int(input("Enter m: "))
n = int(input("Enter n: "))

for num in numbers:
    if num % m == 0 and num % n == 0:
        print(num)