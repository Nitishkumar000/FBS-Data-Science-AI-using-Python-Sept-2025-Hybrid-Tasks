n = int(input("Enter number of employees: "))
total_salary_all = 0

for i in range(1, n + 1):
    basic = float(input(f"Enter basic salary of employee {i}: "))
    
    if basic < 20000:
        da = 0.10 * basic
        ta = 0.12 * basic
        hra = 0.15 * basic
    else:
        da = 0.15 * basic
        ta = 0.18 * basic
        hra = 0.20 * basic
    
    total_salary = basic + da + ta + hra
    total_salary_all += total_salary
    
    print(f"Total salary of employee {i}: ₹{total_salary:.2f}")

print(f"\nTotal salary of all employees: ₹{total_salary_all:.2f}")
