#wap to find factorial of given number using recursion
def fact(num):
    if num == 0 or num == 1:
        return 1
    else:
        return num * fact (num - 1)

number = int(input("Enter a number to find its factorial: "))
result = fact(number)
print("Factorial is:", result)  