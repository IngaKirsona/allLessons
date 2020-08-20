
import UIKit
// Enumeration
var someDay = "Friday"
func setupAlarm() {
    if someDay == "friday"{
        print("set up alarm to 8AM")
    }else{
        print("No alarm for Today")
    }
}
setupAlarm()
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
var weekday = Weekday.friday
//var weekday: Weekday = .friday
weekday = .monday
func setupBedTime(){
    if weekday == .monday || weekday == .tuesday{
        print("Setup alarm to 7:45AM")
    }else{
        print("Setup alarm to 8AM")
    }
}
setupBedTime()
func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("Setup alarm to 7:45AM")
    case .tuesday:
        print("Setup alarm to 7:00AM")
    case .wednesday:
        print("Setup alarm to 7:45AM")
    case .thursday:
        print("Setup alarm to 7:45AM")
    case .friday:
        print("Setup alarm to 8AM")
    default:
        print("No alarm !")
    }
}
setupSleepAlarm()
weekday = .friday
setupSleepAlarm()
enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division_type = "division type"
}
var calc = CalculationType.division_type
print(calc.rawValue)
enum Plante: Int {
    case mercury = 1, venus, earth, mars, saturn, neptune
}
var somePlate = Plante.earth
print("Earth is the \(somePlate.rawValue) planet from the sun.")
if let possiblePlanet = Plante(rawValue: 6){
    print("The 6th planet is \(possiblePlanet)")
}
//associated params
enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}
var wnd = Weekend.sunday("set bed time at", 11, "PM")
print(wnd)
//struct
//checkers
let playerOne = "Player One"
let playerOneXPosition = 10
let playerOneYPosition = 8
let playerTwo = "Player Two"
let playerTwoXPosition = 9
let playerTwoYPosition = 18
func getPositionOnTheGameBoard(from player: String, with x: Int, and y: Int) {
    print("The Position of \(player): x\(x), y\(y)")
}
getPositionOnTheGameBoard(from: playerOne, with: playerOneXPosition, and: playerOneYPosition)
getPositionOnTheGameBoard(from: playerTwo, with: playerTwoXPosition, and: playerTwoYPosition)
struct PositionOnBoard {
    var player: String
    var x: Int
    var y: Int
    func getPositionOn() {
        print("The Position of \(player): x\(x), y\(y)")
    }
}
//object
var playerOnePosition = PositionOnBoard(player: "Player one", x: 10, y: 6)
var playerTwoPosition = PositionOnBoard(player: "Player two", x: 11, y: 3)
playerOnePosition.getPositionOn()
playerTwoPosition.getPositionOn()
class MacBook {
    var name: String
    var year: Int
    var color: String
    init(name: String, year: Int, color: String) {
        self.name = name
        self.color = color
        self.year = year
    }
    func getSpecs(){
        print("Model: \(name), year: \(year), with color \(color)")
    }
}
let macBookPro = MacBook(name: "MacBookPro", year: 2020, color: "Grey")
macBookPro.getSpecs()
let macBookAir = macBookPro
macBookAir.name = "macBookAir"
macBookAir.getSpecs()
macBookPro.getSpecs()
struct iPhone{
    var name: String
    var capacity: Int
    var color: String
    func getSpecs(){
        print("Model: \(name), with: \(capacity)GB and with color \(color)")
    }
}
let iPhoneXR = iPhone(name: "iPhone XR", capacity: 64, color: "Black")
var iPhone11 = iPhoneXR
iPhone11.name = "iPhone11"
iPhoneXR.getSpecs()
iPhone11.getSpecs()




//ssfcac
//new comment
//new comment
//new comment
//new comment
