# Recursive function to reverse a number
def reverse_number(num):
    if num == 0:
        return
    else:
        print(num % 10, end="")
        reverse_number(num // 10)

# Taking input from user
number = int(input("Enter a number: "))

print("Reversed number is:", end=" ")
reverse_number(number)