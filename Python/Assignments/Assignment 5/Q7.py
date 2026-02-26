
# Program to solve different series using menu

print("SERIES PROGRAM")
print("1. 1! + 2! + 3! + ... + n!")
print("2. N + N^2 + N^3 + ... + N^N")
print("3. Geometric series (1 + 2 + 4 + ...)")
print("4. a + a^2/2 + a^3/3 + ... + a^10/10")
print("5. x - x^2/3 + x^3/5 - x^4/7 + ...")

choice = int(input("\nEnter your choice (1-5): "))

if choice == 1:
    n = int(input("Enter value of n: "))
    fact = 1
    total = 0

    for i in range(1, n + 1):
        fact = fact * i
        total = total + fact

    print("Sum of factorial series is:", total)

elif choice == 2:
    n = int(input("Enter value of N: "))
    total = 0

    for i in range(1, n + 1):
        total = total + (n ** i)

    print("Sum of the series is:", total)

elif choice == 3:
    n = int(input("Enter number of terms: "))
    term = 1
    total = 0

    for i in range(n):
        total = total + term
        term = term * 2

    print("Sum of geometric series is:", total)

elif choice == 4:
    a = int(input("Enter value of a: "))
    total = 0

    for i in range(1, 11):
        total = total + (a ** i) / i

    print("Sum of the series is:", total)

elif choice == 5:
    x = int(input("Enter value of x: "))
    n = int(input("Enter number of terms: "))

    total = 0
    sign = 1
    denominator = 1

    for i in range(1, n + 1):
        term = (x ** i) / denominator
        total = total + (sign * term)
        sign = sign * -1
        denominator = denominator + 2

    print("Sum of the series is:", total)

else:
    print("Invalid choice! Please select between 1 and 5.")
