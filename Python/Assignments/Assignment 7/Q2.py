# Pattern e
rows = 5
for i in range(1, rows + 1):
    # Print leading spaces for alignment
    for space in range(rows - i):
        print(" ", end=" ")
        
    # Print increasing part: i to (2*i - 1)
    for j in range(i, 2 * i):
        print(j, end=" ")
        
    # Print decreasing part: (2*i - 2) down to i
    for k in range(2 * i - 2, i - 1, -1):
        print(k, end=" ")
        
    print()