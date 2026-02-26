# Pattern d (Hollow Number Triangle)
rows = 5
for i in range(1, rows + 1):
    for j in range(1, i + 1):
        # Print number if it's the first column, last column (j==i), or last row
        if j == 1 or j == i or i == rows:
            print(j, end=" ")
        else:
            print(" ", end=" ")
    print()