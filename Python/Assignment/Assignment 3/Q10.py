# Program to check marriage eligibility

gender = input("Enter gender (male/female): ").lower()
age = int(input("Enter age: "))

if gender == "male" and age >= 21:
    print("Eligible for marriage.")
elif gender == "female" and age >= 18:
    print("Eligible for marriage.")
else:
    print("Not eligible for marriage.")
