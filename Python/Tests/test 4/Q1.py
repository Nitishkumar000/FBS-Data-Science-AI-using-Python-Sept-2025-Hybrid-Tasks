#write a function to which we pass the parameters and print all the factors of that number
def factors(num):
    for i in range(1, num + 1):
      if num % i == 0:
        print(i)
    

number = int(input("Enter a number to find its factors: "))
factors(number)
