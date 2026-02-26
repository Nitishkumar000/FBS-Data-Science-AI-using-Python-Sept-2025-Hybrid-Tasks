li=[[1,8],[7,4],[4,2],[9,8],[2,10]]

n = len(li)

for i in range(n):
    for j in range(0, n - i - 1):
        if li[j][1] > li[j + 1][1]:
            li[j], li[j + 1] = li[j + 1], li[j]

print("Sorted list:", li)
