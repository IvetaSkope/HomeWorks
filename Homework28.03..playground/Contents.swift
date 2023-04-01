/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Girls"
var resultOFGames = [
    "Brooklyn Nets": ["99:89", "109:99"],
    "Dallas Mavericks":["87:93", "104:97"],
    "Washington Wizards": ["117:112", "107:122"]
]

for (otherTeam, result) in resultOFGames {
    for i in 0..<result.count{
        print("\(myTeam) against \(otherTeam) scored \(result[i])")
    }
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var arrayOfInt = [5, 10, 20, 50, 100, 200, 500]
func calculateCash(_ myCash: [Int]) -> Int {
    var summ = 0
    for num in myCash{
    summ += num
   }
   return summ
}
 calculateCash(arrayOfInt)


/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
func isEvenNumber(numberInQuestion: Int) -> Bool{
    if numberInQuestion % 2 == 0{
        return true
    }
        return false
}
    
    isEvenNumber(numberInQuestion: 5)
    isEvenNumber(numberInQuestion: 4)
    
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int]{
    var array = [Int]()
    for i in from...to{
        array.append(i)
    }
    return array
}
print(createArray(from: 1, to:100))


/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
var from: Int = 1
var to: Int = 10
var array: [Int] = createArray(from: from, to: to)

for i in array{
    var temp = array.firstIndex(of: i)
    if isEvenNumber(numberInQuestion: i){
        array.remove(at: temp!)
    }
}
