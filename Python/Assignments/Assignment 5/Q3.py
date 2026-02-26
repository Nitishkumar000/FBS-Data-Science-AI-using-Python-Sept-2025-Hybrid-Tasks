# Accept number of passengers and ticket cost
num_passengers = int(input("Enter number of passengers: "))
ticket_cost = float(input("Enter cost per ticket: "))

total_amount = 0

for i in range(1, num_passengers + 1):
    age = int(input(f"\nEnter age of passenger {i}: "))

    if age < 12:
        # 30% discount for children
        fare = ticket_cost * 0.70
    elif age > 59:
        # 50% discount for senior citizens
        fare = ticket_cost * 0.50
    else:
        # Full fare
        fare = ticket_cost

    total_amount += fare

print("\n-----------------------------")
print(f"Total ticket amount to pay: ₹{total_amount:.2f}")
