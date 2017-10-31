import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        // Draw an ellipse right, up
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        // Draw an ellipse right down
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: 500-x, width: 50, height: 50)
        
        // Draw an ellipse left up
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: 500-x, centreY: x, width: 50, height: 50)
        
        // Draw an ellipse left down
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: 500-x, centreY: 500-x, width: 50, height: 50)
        
    }
    
}
