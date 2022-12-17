import Foundation

final class AssassinsDroidBuilder: IDroidBuilder {
    
    func build() -> IDroid {
        let droid = AssassinsDroid(name: "HK-47", damage: 100.0)
        return droid
    }
}
