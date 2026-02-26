# Program to check if a 3-digit number is a palindrome

num = int(input("Enter a three-digit number: "))

# Reverse the number
hundreds = num // 100
tens = (num // 10) % 10
ones = num % 10

rev = ones * 100 + tens * 10 + hundreds

# Check palindrome
if num == rev:
    print("The number is a palindrome.")
else:
    print("The number is not a palindrome.")
