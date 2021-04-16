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

//Move turtle middle bottom
turtle.forward(steps: canvas.width / 2)
turtle.drawSelf()

//Move turtle exact middle
turtle.left(by: 90)
turtle.forward(steps: canvas.height / 2)
turtle.drawSelf()
    
func arrow() {
//Turtle right
turtle.right(by:90)
turtle.drawSelf()

//forward 5
turtle.forward(steps: canvas.height / 5)
turtle.drawSelf()

//right 90
turtle.right(by: 90)
turtle.drawSelf()

//forward 2
turtle.forward(steps: canvas.height / 8)
turtle.drawSelf()

//head
turtle.left(by: 135)
turtle.forward(steps: canvas.height / 4)
turtle.drawSelf()

//head2
turtle.left(by: 90)
turtle.forward(steps: canvas.height / 4)
turtle.drawSelf()

//90  1
turtle.left(by: 135)
turtle.forward(steps: canvas.height / 8)
turtle.drawSelf()
//90  2
turtle.right(by: 90)
turtle.forward(steps: canvas.height / 5)
turtle.drawSelf()

//final
turtle.left(by: 90)
turtle.forward(steps: canvas.height / 8)
turtle.drawSelf()
}
arrow()
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
