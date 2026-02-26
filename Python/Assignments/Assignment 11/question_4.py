#wap to find second larget element in list using bubble sort 
li=[1,45,34,78,65,32,78,90,27]
for i in range(len(li)):
    for j in range(0,len(li)-i-1):
        if li[j]>li[j+1]:
            li[j],li[j+1]=li[j+1],li[j]
print("second largest element is:",li[-2])
