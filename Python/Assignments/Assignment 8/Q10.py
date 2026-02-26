# Function to check leap year
def is_leap_year(year):
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False


# Taking input from the user
year = int(input("Enter a year: "))

# Checking leap year
if is_leap_year(year):
    print(year, "is a Leap Year.")
else:
    print(year, "is NOT a Leap Year.")