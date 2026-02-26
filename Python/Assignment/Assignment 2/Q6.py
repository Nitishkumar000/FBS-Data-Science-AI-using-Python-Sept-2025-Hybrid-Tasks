# Ask the user for the basic salary
basic = float(input("Enter the basic salary: "))

# Calculate allowances based on given percentages
da = basic * 0.10   # Dearness Allowance 10%
ta = basic * 0.12   # Travelling Allowance 12%
hra = basic * 0.15  # House Rent Allowance 15%

# Calculate total salary
total_salary = basic + da + ta + hra

# Show the result
print(f"The total salary of the employee is: {total_salary}")