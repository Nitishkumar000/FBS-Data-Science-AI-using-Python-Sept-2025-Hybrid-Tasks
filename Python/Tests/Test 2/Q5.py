# 5. Calculate total bill with 18% GST
total = 0
for i in range(5):
    price = float(input(f"Enter price of product {i+1}: "))
    total += price

gst = total * 0.18
final_bill = total + gst

print("Total bill before 18% GST = Rs.", round(total, 2))

print("Total bill after 18% GST = Rs.", round(final_bill, 2))
