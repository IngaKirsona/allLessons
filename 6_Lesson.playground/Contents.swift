import UIKit

//Lesson 6 Revision
//no params, no args
func multiplyTwoNumbers() {
    print("Result: ", 3 * 3 )
}
multiplyTwoNumbers()
func multiplyNumbers() -> Int {
    let a = 5
    let b = 5
    return a * b
}
multiplyNumbers()
var res = multiplyNumbers()
//two arguments with two parameters with Data type
func multiplyNumbers(firstNumberInt numberA: Int, secondNumberInt numberB: Int) -> Int{
    return numberA * numberB
}
multiplyNumbers(firstNumberInt: 10, secondNumberInt: 2)
//two parameters without arguments
func multiplyNumbers(numberA: Int, numberB: Int) -> Int{
    return numberA * numberB
}
multiplyNumbers(numberA: 30, numberB: 3)
//two parameters and no name arguments
func multiplyNumbers(_ numberOne: Int,_ numberTwo: Int) -> Int{
    return numberOne * numberTwo
}
multiplyNumbers(5, 2)
//two parameters and one arguments
func multiplyNumbers(_ numberOne: Int, multiply numberTwo: Int) -> Int{
    return numberOne * numberTwo
}
multiplyNumbers(11, multiply: 2)
//homeWork based on Lesson6
/*
 Exercise 1
 Declare myTeam as Girls.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myteam = "Girls Team"
let resultsOfGames = [
    "Brooklyn Nets"     : ["99:89", "109:99"],
    "Dallas Mavericks"  : ["99:89", "109:99"],
    "Washington Wizards": ["117:112","07:122"]
]
for (teamName, results) in resultsOfGames{
    for index in 0..<results.count {
        //        print(results.count )
        //        print("\n\(myteam) Vs \(teamName) scored - \(results[index])")
    }
}
for (teamName, results) in resultsOfGames{
    for result in results{
        //print("\(myteam) Vs \(teamName) scored - \(result)")
    }
}
/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */
var wallet = [5, 10, 20, 50, 100, 200, 500]
func calculateCash(_ wallet: [Int]) -> Int {
    var totalCash = 0
    for bankNote in wallet {
        totalCash += bankNote
    }
    return totalCash
}
print("Total amount of cash in my wallet is \(calculateCash(wallet))")
calculateCash(wallet)
/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */
let number = 24
func isEvenNumber(_ number: Int) -> Bool {
    return number % 2 == 0
}
print("\nprovided number \(number) is even: \(isEvenNumber(number))")
isEvenNumber(19)
/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */
func createArray(from start: Int, to end: Int) -> [Int] {
    var array = [Int]()
    for count in start...end {
        array.append(count)
    }
    return array
}
var array = createArray(from: 1, to: 100)
/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */
//1
for number in array {
    if isEvenNumber(number){
        if let index = array.firstIndex(of: number){
            array.remove(at: index)
        }
    }
}
print(array)
//2
let arrayOfInts = array
for i in 0..<arrayOfInts.count{
    switch isEvenNumber(arrayOfInts[i]) {
    case true:
        if let index = array.firstIndex(of: number){
            array.remove(at: index)
        }
    default:
        break
    }
}
//3
let resultFilter = array.filter({$0 % 2 != 0})
print("resultFilter:", resultFilter)
//4
array.removeAll(where: isEvenNumber)
print("isEvenNumber bool:", array)
