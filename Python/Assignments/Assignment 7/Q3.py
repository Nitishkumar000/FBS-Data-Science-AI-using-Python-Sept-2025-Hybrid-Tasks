# Pattern f
rows = 4
for i in range(1, rows + 1):
    # Print ascending numbers
    for j in range(1, i + 1):
        print(j, end="")
    
    # Print spaces (optional depending on exact desired width)
    # The text 1234 4321 suggests a gap or just mirroring
    print(" ", end="") 
    
    # Print descending numbers
    for k in range(i, 0, -1):
        print(k, end="")
    print()