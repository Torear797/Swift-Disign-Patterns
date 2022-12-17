import Foundation

final class AstromechanicDroid: IDroid {
    
    var name: String
    let workTime: Int
    
    init(name: String, workTime: Int) {
        self.name = name
        self.workTime = workTime
    }
}
