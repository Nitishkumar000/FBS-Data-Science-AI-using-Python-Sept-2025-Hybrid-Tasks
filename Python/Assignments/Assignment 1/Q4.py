# Program to calculate Simple Interest

P = float(input("Enter Principal (P): "))
T = float(input("Enter Time in years (T): "))
R = float(input("Enter Rate of Interest (R): "))

# Formula for Simple Interest
SI = (P * T * R) / 100

print("Simple Interest =", SI)
