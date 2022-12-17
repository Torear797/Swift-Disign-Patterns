import UIKit

extension UIColor {
    static var colorStore: [String: UIColor] = [:]
    
    class func rgba(
        _ red: CGFloat,
        _ green: CGFloat,
        _ blue: CGFloat,
        _ alfa: CGFloat
    ) -> UIColor
    {
        let key = "\(red)\(green)\(blue)\(alfa)"
        if let color = colorStore[key] {
            return color
        }
        let color = UIColor (
            red: red,
            green: green,
            blue: blue,
            alpha: alfa
        )
        colorStore[key] = color
        return color
    }
}
