# Pattern g
rows = 5
for i in range(1, rows + 1):
    # Print leading spaces
    for space in range(rows - i):
        print("  ", end="") # Double space for better spread
        
    # Print increasing numbers
    for j in range(1, i + 1):
        print(j, end=" ")
        
    # Print decreasing numbers
    for k in range(i - 1, 0, -1):
        print(k, end=" ")
        
    print()