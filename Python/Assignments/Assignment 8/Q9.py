# Function to check palindrome number
def is_palindrome(num):
    original = num
    reverse = 0

    while num > 0:
        digit = num % 10
        reverse = reverse * 10 + digit
        num = num // 10

    if original == reverse:
        return True
    else:
        return False


# Taking input from the user
number = int(input("Enter a number: "))

# Checking palindrome
if is_palindrome(number):
    print("The entered number is a Palindrome.")
else:
    print("The entered number is NOT a Palindrome.")