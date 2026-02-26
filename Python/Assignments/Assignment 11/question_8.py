#Print 1 to 100 in snakes and ladder pattern.
n = 10
num = 1
for i in range(n):
    if i % 2 == 0:
        for j in range(n):
            print(f"{num:3}", end=' ')
            num += 1
    else:
        temp = num + n - 1
        for j in range(n):
            print(f"{temp:3}", end=' ')
            temp -= 1
        num += n
    print()
