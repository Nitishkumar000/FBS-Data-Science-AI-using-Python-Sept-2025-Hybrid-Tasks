# Function to count digits using recursion
def count_digits(num):
    if num == 0:
        return 0
    else:
        return 1 + count_digits(num // 10)

# Function to calculate Armstrong sum using recursion
def armstrong_sum(num, power):
    if num == 0:
        return 0
    else:
        digit = num % 10
        return (digit ** power) + armstrong_sum(num // 10, power)

# Taking input from user
number = int(input("Enter a number: "))

# Finding number of digits
digits = count_digits(number)

# Calculating Armstrong sum
result = armstrong_sum(number, digits)

# Checking Armstrong condition
if result == number:
    print(number, "is an Armstrong number")
else:
    print(number, "is NOT an Armstrong number")