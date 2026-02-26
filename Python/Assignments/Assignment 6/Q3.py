# Pattern c
rows = 5
for i in range(rows):
    # Calculate 11 to the power of i
    print(11**i)
    
# Alternative method using Pascal's logic for spacing:
# coef = 1
# for i in range(rows):
#     for space in range(1, rows - i):
#         print(" ", end="")
#     for j in range(0, i + 1):
#         if j == 0 or i == 0:
#             coef = 1
#         else:
#             coef = coef * (i - j + 1) // j
#         print(coef, end="") # Remove space to match PDF style "1331"
#     print()