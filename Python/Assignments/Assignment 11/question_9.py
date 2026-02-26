#Write a program to create three lists of numbers, their squares and cubes
li1=[]
li2=[]
li3=[]
n=int(input("Enter the number of elements you want in the list:"))
for i in range(n):
    num=int(input(f"Enter element {i+1}:"))
    li1.append(num)
    li2.append(num**2)
    li3.append(num**3)  

print("The list of numbers is:",li1)
print("The list of squares is:",li2)
print("The list of cubes is:",li3)
