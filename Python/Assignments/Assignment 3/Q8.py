import random

# Step 1: Ask user for userid and password
userid = input("Enter user ID: ")
password = input("Enter password: ")

# Step 2: Correct credentials (you can change these)
correct_userid = "admin"
correct_password = "1234"

if userid == correct_userid and password == correct_password:
    
    # Step 3: Generate a 4-digit random number
    captcha = random.randint(1000, 9999)
    print("Captcha:", captcha)
    
    # Step 4: Ask user to re-enter the captcha
    user_input = int(input("Enter the above number: "))
    
    # Step 5: Check captcha
    if user_input == captcha:
        print("Login Successful!")
    else:
        print("Captcha Incorrect! Login Failed.")
else:
    print("Incorrect user ID or password.")
