# Program to calculate profit or loss

cp = float(input("Enter the cost price: "))
sp = float(input("Enter the selling price: "))

if sp > cp:
    print("Profit =", sp - cp)
elif cp > sp:
    print("Loss =", cp - sp)
else:
    print("No profit, no loss.")
