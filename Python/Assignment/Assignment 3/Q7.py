# Program to check if the user has entered the correct user ID and password

userid = input("Enter user ID: ")
password = input("Enter password: ")

# Predefined correct credentials
correct_userid = "nitish"
correct_password = "1234"

if userid == correct_userid and password == correct_password:
    print("Login successful!")
else:
    print("Incorrect user ID or password.")
