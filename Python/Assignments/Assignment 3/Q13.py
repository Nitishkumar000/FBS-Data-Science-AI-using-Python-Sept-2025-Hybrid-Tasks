# Program to calculate electricity bill based on unit consumption

units = float(input("Enter total units consumed: "))
bill = 0

# Calculate bill based on slabs
if units <= 50:
    bill = units * 0.50

elif units <= 150:
    bill = (50 * 0.50) + (units - 50) * 0.75

elif units <= 250:
    bill = (50 * 0.50) + (100 * 0.75) + (units - 150) * 1.20

else:
    bill = (50 * 0.50) + (100 * 0.75) + (100 * 1.20) + (units - 250) * 1.50

# Add 20% surcharge
surcharge = bill * 0.20
total_bill = bill + surcharge

print(f"Total electricity bill = Rs. {total_bill}")
