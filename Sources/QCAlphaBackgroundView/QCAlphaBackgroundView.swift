import UIKit

public class QCAlphaBackgroundView:UIView {

    public var backgroundTheme:Theme = .light
    {
        didSet {
            switch backgroundTheme {
            case .light:
                colorSets = (.white,.lightGray)
            case .dark:
                colorSets = (.gray,.lightGray)
            case .custom(let firstColor, let secondColor):
                colorSets = (firstColor,secondColor)
            }
            setNeedsDisplay()
        }
    }
    
    public enum Theme {
        case light
        case dark
        case custom(firstColor:UIColor,secondColor:UIColor)
    }
    
    private let rectangeSize:CGFloat = 8
    private var colorSets:(UIColor,UIColor) = (.white,.lightGray)
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawSqares(in: rect)
    }
    
    private func drawSqares(in rect:CGRect) {
        for y in 0...Int(rect.height / rectangeSize) {
            drawRowAt(y: CGFloat(y), in: rect)
        }
    }
    
    private func drawRowAt(y:CGFloat,in rect:CGRect) {
        let sizeValue = Int(rect.width / rectangeSize)
        for x in 0...sizeValue {
            drawSquareAt(x: CGFloat(x) * rectangeSize, y: y * rectangeSize)
            invertColor()
        }
        if sizeValue % 2 != 0 {
            invertColor()
        }
    }
    
    private func drawSquareAt(x: CGFloat, y: CGFloat) {
        let path = UIBezierPath(rect: CGRect(x: x, y: y, width: rectangeSize, height: rectangeSize))
        colorSets.0.setFill()
        path.fill()
    }
    
    private func invertColor() {
        colorSets = (colorSets.1,colorSets.0)
    }
}

