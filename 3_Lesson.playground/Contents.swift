import UIKit

//--Lesson--3----
//If else statement
let someLetter: Character = "c"
if someLetter == "A" || someLetter == "a" {
    print("This is A")
}else if someLetter == "B" || someLetter == "b" {
    print("This is A")
}else if someLetter == "C" || someLetter == "c" {
    print("This is C")
}else{
    print("none of them")
}
//: Switch case
let letter = "C"
switch letter {
case "A" , "a":
    print("our leeter is A")
case "B" , "b":
    print("our leeter is B")
case "c", "C":
    print("our leeter is C")
default:
    print("none of them")
}
let planetCount = 8
var countExpression = ""
switch planetCount {
case 0:
    countExpression = "none"
case 1:
    countExpression = "one"
case 2...4:
    countExpression = "a few"
case 5...11:
    countExpression = "several"
case 12...55:
    countExpression = "dozens of"
default:
    countExpression = "many"
}
print("There are \(countExpression) known plantes")
let level: Character = "A"
switch level {
case "A":
    print("You have A level access")
    fallthrough
case "B":
    print("You have B level access")
    fallthrough
case "C":
    print("You have C level access")
default:
    break
}
let color = "Red"
let number = 3
switch color {
case "Red" where number == 2:
    print("Your color is red")
case "Yellow" where number == 2:
    print("Your color is yellow")
case "Green" where number == 1,
     "Brown" where number == 3:
    print("You have 2 color")
default:
    break
}
//: Optionals
var someString = ""
var anotherString: String
var optionalString: String?//can be nil or String value
optionalString = "100w"
var convert = Int(optionalString!)
print(convert ?? 0)
var convertToInt:Int? = 0
var stringNumber = "123r"
//convertToInt = Int(stringNumber)!
if convertToInt != nil {
    print("convertToInt does not contains any value \(convertToInt!)")
}else {
    print("convertToInt is nil")
}
var someNewNumber = "23!"
someNewNumber = "12"
if let actualNumber = Int(someNewNumber){
    print("String \(someNewNumber) has integer value of \(actualNumber)")
}else{
    print("String \(someNewNumber) can't be converted")
}

