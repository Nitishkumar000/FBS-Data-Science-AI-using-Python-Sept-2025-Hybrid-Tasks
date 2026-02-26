#WAP to separate even and odd numbers from a list
n=int(input("enter the number of elements: "))
even_list=[]
odd_list=[]
for i in range(n):
    num=int(input("enter the number: "))
    if num%2==0:
        even_list.append(num)
    else:
        odd_list.append(num)
print("even numbers:",even_list)
print("odd numbers :",odd_list)
