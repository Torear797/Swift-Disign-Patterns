import Foundation

final class AstromechanicDroidBuilder: IDroidBuilder {
    
    func build() -> IDroid {
        let droid = AstromechanicDroid(name: "R2-D2", workTime: 20)
        return droid
    }
    
}
