// These sizes roughly reflect the aspect ratio (proportions) of a standard 8.5" x 11" sheet of paper.
// NOTE: Please do not adjust these dimensions
let preferredWidth = 450
let preferredHeight = 550

/*
 Required code
 
 Lines 13 to 24 are required to make the playground run.
 
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

// NOTE: Anything drawn using the canvas object directly will not be plotted

// Draw a boundary for the tesselation
// Aim to get the tesselation roughly within this boundary
// NOTE: Please not remove the code below, from lines 31 to 35
canvas.defaultBorderWidth = 5
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = Color(hue: 0, saturation: 25, brightness: 0, alpha: 25)
canvas.drawRectangle(at: Point(x: 25, y: 75), width: 400, height: 400)

// MARK: Functions
// NOTE: Define the behaviours you wish to "teach" the turtle below
//       This is a good example of how to apply abstraction to manage (hide) complexity
//       You may modify or remove these functions as desired

// Draws a diamond based on the provided size and color arguments
let squareSize = 5



//Turtle to right position
turtle.penUp()
turtle.forward(steps: 9 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 20 * squareSize)
turtle.drawSelf()

func drawShape () {
    turtle.penDown()
    //First part
    //Starting point
    turtle.left(by: 45)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Second
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Third Point
    turtle.right(by: 135)
    turtle.forward(steps: 4 * squareSize)
    //turtle.drawSelf()
    
    //Fourth
    turtle.right(by: 90)
    turtle.forward(steps: 4 * squareSize)
    //turtle.drawSelf()
    
    //Fifth
    turtle.right(by: 45)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Sixth
    turtle.right(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Second Part
    //Seventh
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Eighth
    turtle.left(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //Ninth
    turtle.right(by: 135)
    turtle.forward(steps: 4 * squareSize)
    //turtle.drawSelf()
    
    //Tenth
    turtle.right(by: 90)
    turtle.forward(steps: 4 * squareSize)
    //turtle.drawSelf()
    
    //Eleventh
    turtle.right(by: 45)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    
    //twelvth
    turtle.right(by: 90)
    turtle.forward(steps: Int(round(2 * Double(2).squareRoot() * Double(squareSize))))
    //turtle.drawSelf()
    //Finish
}

//Making it more simple
func oneRowShape() {
    drawShape()
    //First Row
    for _ in 1...9 {
        turtle.right(by: 45)
        turtle.penUp()
        turtle.forward(steps: 8 * squareSize)
        turtle.left(by: 90)
        drawShape()
    }
}

//Making new row simple
func newRow() {
//Beginning a new row
turtle.penUp()
turtle.left(by: 45)
turtle.forward(steps: 8 * squareSize)
turtle.left(by: 90)
turtle.forward(steps: 72 * squareSize)
    turtle.right(by: 90)
turtle.penDown()
}

//Start
canvas.highPerformance = true

//Making a loop
for _ in 1...10 {
    oneRowShape()
    newRow()
}

canvas.highPerformance = false
//End
// Copy the SVG instructions to the clipboard (for use by the plotter)
turtle.copySVGToClipboard()
