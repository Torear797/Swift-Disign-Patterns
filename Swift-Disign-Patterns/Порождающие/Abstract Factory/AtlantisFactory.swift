//
//  AtlantisFactory.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class AtlantisFactory: StargateAbstractFactory {
    func createStargate() -> Stargate {
       StargateAtlantis()
    }
    
    func createTypesetter() -> Typesetter {
       TypesetterAtlantis()
    }
    
    func createDiaphragm() -> Diaphragm {
        DiaphragmAtlantis()
    }
    
}
