# Program to calculate Compound Interest

P = float(input("Enter Principal (P): "))
T = float(input("Enter Time in years (T): "))
R = float(input("Enter Rate of Interest (R): "))

# Formula for Compound Interest:  A = P * (1 + R/100)^T
A = P * (1 + R/100) ** T
CI = A - P

print("Compound Interest =", CI)
print("Total Amount =", A)
