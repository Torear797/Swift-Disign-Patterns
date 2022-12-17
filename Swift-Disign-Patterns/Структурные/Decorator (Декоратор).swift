import Foundation

final class MagickStaff: IWeapon {
    
    private let decoratorType: IWeapon
    
    init(decoratorType: IWeapon) {
        self.decoratorType = decoratorType
    }
    
    func impact() {
        decoratorType.impact()
        print("MMMMAGICK!")
    }
    
    //MARK: - Extensions
    
    func ritual() {
        print("ritual")
    }
    
}
