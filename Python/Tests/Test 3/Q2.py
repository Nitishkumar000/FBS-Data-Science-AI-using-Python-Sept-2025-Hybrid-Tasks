#WAP to calculate the sum of the series: 1/1! + 2/2! + 3/3! + ... + n/n!
import math

n = int(input("Enter the value of n: "))
sum_series = 0

for i in range(1, n + 1):
    sum_series += i / math.factorial(i)

print("Sum of the series =", sum_series)
