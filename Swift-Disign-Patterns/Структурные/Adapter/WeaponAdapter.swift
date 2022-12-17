import Foundation

final class WeaponAdapter: IWeapon {
    private let weapon: SoulSword
    
    init(soulSword: SoulSword) {
        weapon = soulSword
    }
    
    func impact() {
        weapon.impactBySword()
    }
    
}
