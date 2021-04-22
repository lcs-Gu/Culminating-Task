//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
let squaresize = 10

//Move turtle exact middle
turtle.left(by: 90)
turtle.drawSelf()
//Turtle right
turtle.right(by:90)
//turtle.drawSelf()

func arrow() {
    
    // Make sure lines are drawn
    turtle.penDown()
    
    //forward 5
    turtle.forward(steps: 5 * squaresize)
    //turtle.drawSelf()
    
    //right 90
    turtle.right(by: 90)
    //turtle.drawSelf()
    
    //forward 2
    turtle.forward(steps: 1 * squaresize)
    //turtle.drawSelf()
    
    //head
    turtle.left(by: 135)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squaresize))))
    //turtle.drawSelf()
    
    //head2
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squaresize))))
    //turtle.drawSelf()
    
    //90  1
    turtle.left(by: 135)
    turtle.forward(steps: 1 * squaresize)
    //turtle.drawSelf()
    //90  2
    turtle.right(by: 90)
    turtle.forward(steps: 5 * squaresize)
    //turtle.drawSelf()
    
    //final
    turtle.left(by: 90)
    turtle.forward(steps: 2 * squaresize)
    //turtle.drawSelf()
}

// Apply abstraction – use a loop to reduce complexity
func oneRowArrow() {
    for _ in 1...9 {
        
        // Draw arrow
        arrow()
        
        // Gets turtle over into position to draw a new arrow
        turtle.left(by: 90)
        turtle.penUp()
        turtle.forward(steps: 7 * squaresize)
        
    }
}
//Row function
func beginNewRow() {
    turtle.penUp()
    turtle.right(by: 180)
    turtle.forward(steps: 63 * squaresize)
    turtle.right(by: 90)
    turtle.forward(steps: 4 * squaresize)
    turtle.right(by: 90)
    turtle.penDown()
}
//Whole sheet page
canvas.highPerformance = true
for _ in 1...16{
    oneRowArrow()
    beginNewRow()
}
canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
