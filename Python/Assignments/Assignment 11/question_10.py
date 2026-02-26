li=[1,2,3,4,5,6,7,8,9,10]
for i in li:
    if i % 2 != 0:
        li.remove(i)

print("The list of even numbers is:",li)
