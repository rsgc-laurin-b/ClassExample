import Foundation

public class Image {
    
    // MARK: Properties
    
    // Properties can be used inside any of the method(s) / function(s) below
    var canvas : Canvas
    
    // MARK: Initializer(s)
    
    // The initializer runs once when the class is used to create an object
    public init(drawOn theCanvas : Canvas) {
        
        // Add a reference to the provided
        canvas = theCanvas
        
        canvas.translate(byX: 500, byY: 0)
        
        for _ in 1...5{
            canvas.translate(byX: -100, byY: 0)
         
            upperCircle()
            lowerCircle()
            lines()
        }
        
        canvas.translate(byX: 500, byY: -300)
        for _ in 1...5{
            canvas.translate(byX: -100, byY: 0)
            
            upperCircle()
            lowerCircle()
            lines()
        }
        
        canvas.translate(byX: 0, byY: 250)
        canvas.rotate(by: 180)
        canvas.translate(byX: 100, byY: -550)
    
        for _ in 1...5{
            canvas.translate(byX: -100, byY: 0)
            
            upperCircle()
            lowerCircle()
            lines()
        }
        
        
        
        
        
    }

    
    
    
    
    
    // MARK: Method(s)/Function(s)
    
    // Method(s) to draw the image on the provided canvas go below
    
    /**
     Draws the upper circle of the wallpaper pattern.
     */
    func upperCircle() {
        // Top circles
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        
        //big circle
        canvas.fillColor = Color(hue: 26 , saturation: 69, brightness: 37, alpha: 100)
        canvas.drawEllipse(centreX: 50, centreY: 350, width: 80, height: 80, borderWidth: 10)
        //medium circle
        canvas.fillColor = Color(hue: 22 , saturation: 93, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: 50, centreY: 350, width: 60, height: 60, borderWidth: 10)
        //small circle
        canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
        canvas.drawEllipse(centreX: 50, centreY: 350, width: 40, height: 40, borderWidth: 10)
        //white circle
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: 50, centreY: 350, width: 20, height: 20)
    }
    
    /**
     Draws the lower circle of the wallpaper pattern.
     */
    func lowerCircle() {
        // Bottom circles
        
        //big circle
        canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
        canvas.drawEllipse(centreX: 0, centreY: 300, width: 80, height: 80, borderWidth: 10)
        //medium circle
        canvas.fillColor = Color(hue: 22 , saturation: 93, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: 0, centreY: 300, width: 60, height: 60, borderWidth: 10)
        //small circle
        canvas.fillColor = Color(hue: 26 , saturation: 69, brightness: 37, alpha: 100)
        canvas.drawEllipse(centreX: 0, centreY: 300, width: 40, height: 40, borderWidth: 10)
        //White Circle
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: 0, centreY: 300, width: 20, height: 20)
        
    }
    
    
    
    func lines() {
        // LINES
        
        // first white line
        canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 0, fromY: 340, toX: 0, toY: 310, lineWidth: 20)
        
        
        // first brown line
        canvas.lineColor = Color(hue: 26 , saturation: 69, brightness: 37, alpha: 100)
        canvas.drawLine(fromX: 15, fromY: 345, toX: 15, toY: 305, lineWidth: 10)
        //first orange line
        canvas.lineColor = Color(hue: 22 , saturation: 93, brightness: 90, alpha: 100)
        canvas.drawLine(fromX: 25, fromY: 345, toX: 25, toY: 305, lineWidth: 10)
        //first yellow line
        canvas.lineColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
        canvas.drawLine(fromX: 35, fromY: 345, toX: 35, toY: 305, lineWidth: 10)
        
        // Second white line
        canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 50, fromY: 340, toX: 50, toY: 310, lineWidth: 20)
        
        //SECOND SET OF LINES
        
        //Second yellow line
        canvas.lineColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
        canvas.drawLine(fromX: 65, fromY: 345, toX: 65, toY: 305, lineWidth: 10)
        //Second orange line
        canvas.lineColor = Color(hue: 22 , saturation: 93, brightness: 90, alpha: 100)
        canvas.drawLine(fromX: 75, fromY: 345, toX: 75, toY: 305, lineWidth: 10)
        //second brown line
        canvas.lineColor = Color(hue: 26 , saturation: 69, brightness: 37, alpha: 100)
        canvas.drawLine(fromX: 85, fromY: 345, toX: 85, toY: 305, lineWidth: 10)
    }
    
    
}


