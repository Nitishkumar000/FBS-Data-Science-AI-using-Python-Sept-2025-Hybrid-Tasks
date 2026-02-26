# Ask the user to enter an amount
amount = int(input("Enter the amount: "))

# List of note denominations
notes = [2000, 500, 200, 100, 50, 20, 10, 5, 2, 1]

print("Minimum number of notes:")

# Go through each note and calculate how many are needed
for note in notes:
    if amount >= note:
        count = amount // note
        amount = amount % note
        print(f"{note} : {count}")
