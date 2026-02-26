for i in range(5):
    for j in range(5):
        if (i + j) % 2 == 0:
            print("1", end="")
        else:
            print("0", end="")
    print()
