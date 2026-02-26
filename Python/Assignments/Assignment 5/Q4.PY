# Accept range from user
start = int(input("Enter starting number: "))
end = int(input("Enter ending number: "))

print("\nArmstrong numbers in the given range are:")

for num in range(start, end + 1):
    temp = num
    sum = 0
    digits = len(str(num))

    while temp > 0:
        digit = temp % 10
        sum = sum + (digit ** digits)
        temp = temp // 10

    if sum == num:
        print(num)
