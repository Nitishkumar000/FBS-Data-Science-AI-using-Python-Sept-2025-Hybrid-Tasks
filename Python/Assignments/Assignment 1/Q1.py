# Program to calculate Simple Interest

P = float(input("Enter Principal (P): "))
T = float(input("Enter Time in years (T): "))
R = float(input("Enter Rate of interest (R): "))

# Simple Interest formula: (P * T * R) / 100
SI = (P * T * R) / 100

print("Simple Interest =", SI)
