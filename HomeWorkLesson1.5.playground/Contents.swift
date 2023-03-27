/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */
var var1: Float = 3.14
var var2: Float = 42.0
var var3: Double = Double(var1 + var2)
print(Float(var3))
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
var numberOne: Int = 24
var numberTwo: Int = 12
let constantOne: Float = Float(numberOne/numberTwo)
let constantTwo: Float = Float(numberOne % numberTwo)
print("when dividing \(numberOne) by \(numberTwo), the result is \(constantOne), the remaider is \(constantTwo).")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let laptopQty = 7
if laptopQty <= 4
{
    print("Each laptop will cost 1000 EUR")
}
else if laptopQty >= 5 && laptopQty <= 9
{
    print("Each laptop will cost 900EUR")
}else if laptopQty >= 10
{
    print("Each laptop will cost 850 EUR")
}


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge = "33a"
if let myInt = Int(userInputAge)
{
    print(myInt)
}
else
{
    print("Unexpectedly found nil while unwrapping an Optional value")
}
/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let calendar = calendar.current
let date1  = calendar.date(from: DateComponents(year:1987, month:9, day:2))!
let date2 = Date()

let components = calendar.dateComponents([.year,.month,.day], from: date1, to: date2)
let years = components.year!
let month = components.month!
let days = components.days!
print("It has been \(years) years, \(month) months and \(days) days")


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let quarter = calendar.component(month, from: date1)
switch {quarter
case(1...3):
    print("I was born in the 1st quarter")
case(4...6):
    print("I was born in the 2nd quarter")
case(7...9):
    print("I was born in the 3rd quarter")
case(10...12):
    print("I was born in the 4th quarter")
}
//=================
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        -
