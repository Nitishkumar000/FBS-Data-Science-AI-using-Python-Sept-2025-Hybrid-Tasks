# Program to find quotient and remainder of two numbers

num1 = int(input("Enter the dividend: "))
num2 = int(input("Enter the divisor: "))

quotient = num1 // num2      # Integer division
remainder = num1 % num2      # Modulus operator

print("Quotient =", quotient)
print("Remainder =", remainder)
