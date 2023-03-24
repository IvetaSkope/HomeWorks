/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

var StringA: String = "I'm learing"
var StringB: String = "swift"
print(StringA + StringB,"!!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge : Int = 35

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears : Int = myAge + 10
print("My age in ten years will be",myAgeInTenYears)

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear = Double(365.25)
/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed: Float =  Float(myAgeInTenYears) * Float(daysInYear)
print("I am", daysPassed, "days old")
/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge). After 10 years, I will be \(myAgeInTenYears). From the moment of my brithday have passed approximately \(daysPassed)")

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
var aC: Double = 8
var cB: Double = 6
var triHypotenuse = Double(sqrt(pow(aC, 2) + pow(cB, 2)))
print("Triangle ABC hypotenuse is \(triHypotenuse)")
var triArea = (aC * cB)/2
print("Triangle areea is \(triArea) square centimeters")
print("Triangle peerimeter is \(aC + cB + triHypotenuse) centimeeters")
                                                                                                                                                                                                
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd"
let birthDate = formatter.date(from: "1987/09/02")
let currentDateTime = Date()
let diffSeconds = currentDateTime.timeIntervalSinceReferenceDate - birthDate!.timeIntervalSinceReferenceDate
print("Total years \(diffSeconds / 31556926), total months \(diffSeconds / 2628288), total days \(diffSeconds / 86400)")
                                                                                                                                  
