# Pattern e
rows = 5
for i in range(1, rows + 1):
    # Printing leading spaces
    for space in range(rows - i):
        print("  ", end="") # Double space for better alignment
    # Printing numbers
    for j in range(1, 2 * i):
        print(j, end=" ")
    print()