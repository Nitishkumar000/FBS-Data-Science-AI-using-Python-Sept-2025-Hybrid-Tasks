# Pattern f
rows = 5
for i in range(1, rows + 1):
    # Printing spaces
    for space in range(rows - i):
        print(" ", end="")
    # Printing stars
    for k in range(2 * i - 1):
        print("*", end="")
    print()