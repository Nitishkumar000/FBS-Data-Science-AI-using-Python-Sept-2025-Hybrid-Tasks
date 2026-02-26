# Ask the user for the cost price and discount percentage
cost_price = float(input("Enter the cost price of the book: "))
discount = float(input("Enter the discount percentage: "))

# Calculate the discount amount
discount_amount = (cost_price * discount) / 100

# Calculate the selling price
selling_price = cost_price - discount_amount

# Show the result
print(f"The selling price of the book is: {selling_price}")
