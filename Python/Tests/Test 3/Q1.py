# WAP to print first n prime numbers
def is_prime(num):
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True

n = int(input("Enter number of prime numbers to print: "))
count = 0
num = 2

print("First", n, "prime numbers are:")
while count < n:
    if is_prime(num):
        print(num, end=" ")
        count += 1
    num += 1
