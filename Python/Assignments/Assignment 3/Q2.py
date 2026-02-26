# Check whether the entered alphabet is a vowel or consonant

ch = input("Enter any alphabet: ").lower()

if ch in ('a', 'e', 'i', 'o', 'u'):
    print("It is a vowel.")
else:
    print("It is a consonant.")
