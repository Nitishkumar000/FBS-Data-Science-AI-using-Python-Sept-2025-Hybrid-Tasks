# Recursive function to reverse a number
def reverse_number(num, rev=0):
    if num == 0:
        return rev
    else:
        return reverse_number(num // 10, rev * 10 + num % 10)

# Taking input from user
number = int(input("Enter a number: "))

# Calling the function
result = reverse_number(number)

# Displaying the result
print("Reversed number is:", result)