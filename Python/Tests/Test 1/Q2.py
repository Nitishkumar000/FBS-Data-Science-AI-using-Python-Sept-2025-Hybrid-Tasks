# Simple Interest Calculator

# Step 1: Input values
P = float(input("Enter Principal amount (P): "))
R = float(input("Enter Rate of Interest per annum (R%): "))
T = float(input("Enter Time (in years): "))

# Step 2: Calculate Simple Interest and Total Amount
SI = (P * R * T) / 100
A = P + SI

# Step 3: Display Results
print("\n--- Simple Interest Calculation ---")
print(f"Principal Amount (P): ₹{P:.2f}")
print(f"Rate of Interest (R): {R:.2f}%")
print(f"Time (T): {T:.2f} years")
print(f"Simple Interest (SI): ₹{SI:.2f}")
print(f"Total Amount (A = P + SI): ₹{A:.2f}")
