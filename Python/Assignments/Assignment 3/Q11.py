# Program to calculate total ticket amount for 5 people

total_amount = 0

ticket = float(input("Enter ticket amount per person: "))

for i in range(1, 6):
    age = int(input(f"Enter age of person {i}: "))

    if age < 12:
        amount = ticket * 0.70      # 30% discount
    elif age > 59:
        amount = ticket * 0.50      # 50% discount
    else:
        amount = ticket             # No discount

    total_amount += amount

print(f"Total ticket amount for all 5 people: {total_amount}")
