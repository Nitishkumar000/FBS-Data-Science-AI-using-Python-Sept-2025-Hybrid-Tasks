# Function to count number of digits
def count_digits(num):
    count = 0
    while num > 0:
        count += 1
        num = num // 10
    return count


# Function to calculate sum of digits raised to power
def armstrong_sum(num, digits):
    total = 0
    while num > 0:
        digit = num % 10
        total = total + (digit ** digits)
        num = num // 10
    return total


# Function to check Armstrong number
def is_armstrong(num):
    digits = count_digits(num)
    total = armstrong_sum(num, digits)
    return total == num


# Taking input from user
number = int(input("Enter a number: "))

# Checking Armstrong number
if is_armstrong(number):
    print(number, "is an Armstrong number.")
else:
    print(number, "is NOT an Armstrong number.")