# Hollow Square Pattern
size = 5
for i in range(size):
    for j in range(size):
        # Print star if it's the first row, last row, first col, or last col
        if i == 0 or i == size - 1 or j == 0 or j == size - 1:
            print("*", end=" ")
        else:
            print(" ", end=" ")
    print()