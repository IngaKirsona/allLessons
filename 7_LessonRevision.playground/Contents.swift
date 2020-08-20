import UIKit
// Lesson 7 - OOP
//blog
let postTitle = "OOP"
let postText = "Text TEXT"
let postAuthor = "Bootcamp"
let postTitle2 = "OOP2"
let postText2 = "Text2"
let postAuthor2 = postAuthor
//class
class Post {
    var title = ""
    var text = ""
    var author = ""
}
let firstPost = Post()
firstPost.title = "This is my first post"
firstPost.text = "txt"
firstPost.author = "A M"
let secondPost = Post()
secondPost.title = "Second Post"
secondPost.text = "2222"
secondPost.author = "MMM"
print("Author \(firstPost.author) has published new post: \(firstPost.title) with text - \(firstPost.text)")
print("Author \(secondPost.author) has published new post: \(secondPost.title) with text - \(secondPost.text)")
firstPost === secondPost
//class methods
class Comment {
    var smile = ""
    var author = ""
    var likes = 0
    var numberOfLikes = 0
    //Instance methods
    func addComment() {
        numberOfLikes += 1
    }
}
let firstComment = Comment()
firstComment.smile = "🤣"
firstComment.author = "ACC"
firstComment.addComment()
firstComment.addComment()
firstComment.addComment()
let secondComment = Comment()
secondComment.smile = "😜"
secondComment.numberOfLikes = 5
print("The number of comment reactions for: \(firstComment.smile) is \(firstComment.numberOfLikes)")
print("The number of comment reactions for: \(secondComment.smile) is \(secondComment.numberOfLikes)")
let thirdComment = Comment()
thirdComment.author
thirdComment.likes = 5
class Player {
    var team = "NY"
    var number: Int? = 10
    var tatoo = true
    func description() -> String {
        if let playerNumber = number {
            return "Hello! I'm player of that tema: \(team) and my number is \(playerNumber)"
        }else{
            return "Hello! I'm player of that tema: \(team)"
        }
    }
}
let playerOne = Player()
playerOne.team = "LA"
playerOne.team
playerOne.description()
//init
class Alien {
    var name: String
    var age: Int?
    var hairs: Bool
    //prepare default values for our class
    init() {
        name = "12AAA"
        hairs = true
    }
    init(nameAlien: String, age: Int?, hairs: Bool) {
        self.name = nameAlien
        self.hairs = hairs
        self.age = age
    }
    func description() -> String {
        if let alienAge = age {
            return "Hello! I'm aline, my name is: \(name) and I'm \(alienAge) years old"
        }else{
            return "Hello! I'm aline, my name is: \(name)"
        }
    }
}
let alien = Alien()
alien.name
let alineOne = Alien(nameAlien: "Tod", age: 3, hairs: false)
alineOne.description()
//initialization - process of preparing an instance of the calss, preparing example of our class
class Human {
    var name = ""
    var age = 0
    init() {}
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let personSam = Human(name: "Sam", age: 34)
personSam.name
personSam.age
let personTom = Human(name: "Tom", age: 22)
personTom.age = 34
let personS = Human()
class Parent {
    var name = ""
    var age = 0
    init() {}
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func walk() {
        print("can walk")
    }
    func sleep() {
        print("need a sleep")
    }
    func eat(){
        print("need to eat")
    }
}
let dad = Parent(name: "Sam", age: 44)
dad.name
dad.age
dad.eat()
class Child: Parent {
    func feeding() {
        if age <= 2{
            print("need a help")
        }else{
            print("can eat independetly")
        }
    }
    func education(){
        if age >= 3 && age <= 7{
            print("kinder garden education")
        }else if age < 3{
            print("too early for education")
        }else{
            print("Too late for kinder garden education")
        }
    }
    //    func walk() {
    //           print("can walk")
    //     }
}
let littleBoy = Child(name: "Tom", age: 5)
littleBoy.name
littleBoy.sleep()
littleBoy.eat()
littleBoy.education()
littleBoy.feeding()
class SchoolChild: Child {
    func learning(){
        if age >= 8 && age <= 18 {
            print("its a school time")
        }else{
            print("too early for school")
        }
    }
}
let schoolBoyQ = SchoolChild(name: "Q", age: 8)
schoolBoyQ.learning()
schoolBoyQ.name
schoolBoyQ.feeding()
//Polymorphism
class Figure {
    func draw(){}
}
class Circle: Figure {
    override func draw() {
        print("Draw circle")
    }
}
class Rectangle: Figure {
    override func draw() {
        print("Draw Rectangle")
    }
}
class Triangle: Figure {
    override func draw() {
        print("Draw Triangle")
    }
}
//class objects
let circle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()
func drawFigure(_ figure: Figure){
    figure.draw()
}
drawFigure(circle)
drawFigure(triangle)
drawFigure(rectangle)
