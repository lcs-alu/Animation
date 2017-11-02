import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Horizontal position of circle
    var x : Int
    
    // Horizontal speed
    var dx : Int

    // Vertical position of circle
    var y : Int
    
    // Vertical speed
    var dy : Int

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 0, toButNotIncluding: 500)
        
        y = random(from: 0, toButNotIncluding: 500)
        
        // Set a starting speed
        dx = 5
        dy = 5
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        // Change position
        x += dx
        y += dy
        
        // Boucing at the right side
        if x > 500 {
            dx = -1
        }
        
        // Boucing at the left side
        if x < 0 {
            dx = 1
        }
        
        // Boucing at the up side
        if y > 500 {
            dy = -5
        }
        
        // Boucing at the bottom side
        if y < 0 {
            dy = 5
        }
        
        // Show the position and the speed
        print("Position is \(x)")
        print("Speed is \(dx)")

        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
        
        
    }
    
}
