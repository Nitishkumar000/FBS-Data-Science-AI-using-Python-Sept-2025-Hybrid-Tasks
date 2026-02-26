# Take input from user
n = int(input("Enter how many prime numbers you want: "))

number = 2        # Number to check
prime_count = 0  # Count of prime numbers printed

print("\nFirst", n, "prime numbers are:")

# Loop until we get required number of prime numbers
while prime_count < n:

    is_prime = True

    # Check whether the number is prime
    for i in range(2, number):
        if number % i == 0:
            is_prime = False
            break

    # If number is prime, print it
    if is_prime:
        print(number)
        prime_count = prime_count + 1

    number = number + 1
