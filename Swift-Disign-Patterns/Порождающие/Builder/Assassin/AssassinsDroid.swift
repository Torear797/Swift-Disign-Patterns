import Foundation

final class AssassinsDroid: IDroid {
    
    var name: String
    let damage: Double
    
    init(name: String, damage: Double) {
        self.name = name
        self.damage = damage
    }
    
}
