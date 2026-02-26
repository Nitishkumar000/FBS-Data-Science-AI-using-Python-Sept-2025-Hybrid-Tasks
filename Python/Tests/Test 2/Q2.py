# 2. Check condition on 3-digit number
num = int(input("Enter a 3-digit number: "))

a = num // 100       # first digit
b = (num // 10) % 10 # second digit
c = num % 10         # third digit

if a == 2 * b and a * 2 == c:
    print("Yes, you have done it")
else:
    print("Please try next time")
