//
//  UniverseFactory.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class UniverseFactory: StargateAbstractFactory {
    func createStargate() -> Stargate {
       StargateUniverse()
    }
    
    func createTypesetter() -> Typesetter {
       TypesetterUniverse()
    }
    
    func createDiaphragm() -> Diaphragm {
        DiaphragmUniverse()
    }
    
}
