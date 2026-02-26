# Pattern d
rows = 5
for i in range(1, rows + 1):
    for j in range(i):
        print(chr(65 + j), end="") # 65 is the ASCII value for 'A'
    print()