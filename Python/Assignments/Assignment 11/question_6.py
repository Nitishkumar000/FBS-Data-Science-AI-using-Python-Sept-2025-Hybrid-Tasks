#Python Program to Find the Union of two Lists
list1 = [1, 2, 3, 4, 5]
list2 = [4, 5, 6, 7, 8]
union_list = list(set(list1) | set(list2))
print("The union of the two lists is:", union_list)