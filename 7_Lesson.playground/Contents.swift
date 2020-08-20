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
    //class method
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
//initialization - process of preparing an instance of the calss
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
//let personSam = Human()
