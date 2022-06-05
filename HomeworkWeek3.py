#Task 1
print("Welcome to Burgerriaaa!")
size = input("What burger do you want? beef, chicken, or lamb ").lower()
lettuce = input("Do you want lettuce? Y or N ")
cheese = input("Do you want cheese? Y or N ")
bill = 0

if size == "beef":
    bill += 4
    if lettuce == "Y":
        bill += 1
    elif cheese == "Y":
        bill += 1
    else:
        bill += 0
elif size == "chicken":
    bill += 5
    if lettuce == "Y":
        bill += 1
    elif cheese == "Y":
        bill += 1
    else:
        bill += 0
elif size == "lamb":
    bill += 6
    if lettuce == "Y":
        bill += 1
    elif cheese == "Y":
        bill += 1
    else:
        bill += 0
else:
    print("Invalid option, try again")
    
print(f"your final bill £{bill}. Please take a seat over there your order will be ready in 10 minutes. Thank you!! ")

#Task 2
print ("Welcome to the depreciation calculator ")
Bike_price = 2000
age = int(input("How many years has it been since the bike was purchased? "))

def bike_loss():
    depreciation = Bike_price - (age * 200)
    while depreciation > 1000:
        if depreciation > 1000:
            depreciation -= 200
            print(str(depreciation))
        else:
            print(str(depreciation))
bike_loss()


#Task 3

number1 = int(input("Pick a number? "))
number2 = int(input("Pick a second number? "))
operation = input("Select a operation (plus, minus, times or divide)? ")

def operation1():
    if operation == "plus":
        print(number1 + number2)
    elif operation == "minus":
        print(number1 - number2)
    elif operation == "times":
        print(number1 * number2)
    elif operation == "divide":
        print(number1 / number2)
    else:
        print("Invalid input, please try again")

operation1()