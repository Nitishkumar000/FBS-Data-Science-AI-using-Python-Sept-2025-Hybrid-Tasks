# Recursive function to check prime
def is_prime(num, i=2):
    if num <= 1:
        return False
    if i == num:
        return True
    if num % i == 0:
        return False
    return is_prime(num, i + 1)

# Taking input from user
number = int(input("Enter a number: "))

# Checking prime condition
if is_prime(number):
    print(number, "is a Prime number")
else:
    print(number, "is NOT a Prime number")