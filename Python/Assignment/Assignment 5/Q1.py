# Predefined user id and password
correct_userid = "admin"
correct_password = "1234"

attempts = 0
max_attempts = 3

while attempts < max_attempts:
    userid = input("Enter User ID: ")
    password = input("Enter Password: ")

    if userid == correct_userid and password == correct_password:
        print("Login successful! Welcome.")
        break
    else:
        attempts += 1
        remaining = max_attempts - attempts
        print("Incorrect User ID or Password.")

        if remaining > 0:
            print(f"You have {remaining} attempt(s) left.\n")
        else:
            print("You have used all attempts. Program terminated.")
