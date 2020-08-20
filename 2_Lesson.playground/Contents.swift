import UIKit

//Lesson 2
//Arithmetic operators
var a = 9
var b = 4
var result = a + b
print(result)
//Reminder
var rem = a % b
print(rem)
//Assignment operator
a = 5
b = 10
var res = a + result
print(res)
a = b
print(a)
a = a + b // a+=b
print(a)
//Comparison Operators, true or false
//if conditional statement
if (a == b){
    print("statement is true")
}else{
    print("statement is false")
}
(a != b)
(a > b)
(a < b)
(a >= b)
(a <= b)
//Logical operators
let updateDeniedMessege = "Can't update Xcode"
let updateMessage = "Updated!"
let latestXcodeVersion = false
let latestMacVersion = true
//Logical NOT operator
if !latestXcodeVersion {
    print(updateMessage)
}
//Logical AND operator
if latestXcodeVersion && latestMacVersion {
    print(updateMessage)
} else{
    print(updateDeniedMessege)
}
//Logical OR operator
if latestXcodeVersion || latestMacVersion {
    print(updateMessage)
} else{
    print(updateDeniedMessege)
}
//--Lesson--2.5----
//Strings and Chars
let name: String
var surename = String()
name = "A"
surename = "M"
let email = ""//can't change
let exclamationMark: Character = "!"
//Concatenate strings
let fullName = name + " " + surename
var myName = "My name is "
myName += fullName
//myName = myName + fullName
myName.append(exclamationMark)
//Interpolating strings
let aboutString = """
\(myName)
String interpolation is a way to combine variables and constants of different types within a string.
In order to add any variable or constant to a string, you need to insert a backslash, open a parenthesis, enter the name of our variable, close a parenthesis.
"""

