import Foundation

public class Image {
    
    // MARK: Properties
    
    // Properties can be used inside any of the method(s) / function(s) below
    var c : Canvas
    
    // MARK: Initializer(s)
    
    // The initializer runs once when the class is used to create an object
    public init(drawOn theCanvas : Canvas) {
        
        // Add a reference to the provided
        c = theCanvas
        
        // Draw the image by invoking method(s) below
        upperCircle()
        lowerCircle()
    }
    
    // MARK: Method(s)/Function(s)
    
    // Method(s) to draw the image on the provided canvas go below
    
    /**
     Draws the upper circle of the wallpaper pattern.
     */
    func upperCircle() {
        
        // Draw a circle in the middle of the canvas
        c.drawEllipse(centreX: c.width / 2, centreY: c.height / 2, width: 100, height: 100)
        c.drawText(message: "This circle is drawn from inside the Image class.", size: 12, x: 125, y: c.height / 2 - 100)
        
    }
    
    /**
     Draws the lower circle of the wallpaper pattern.
     */
    func lowerCircle() {
        
    }
    
    
    
}
