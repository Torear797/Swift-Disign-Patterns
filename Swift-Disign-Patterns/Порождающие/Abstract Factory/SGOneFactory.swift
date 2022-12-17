//
//  SGOneFactory.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class SGOneFactory: StargateAbstractFactory {
    func createStargate() -> Stargate {
        StargateSGOne()
    }
    
    func createTypesetter() -> Typesetter {
        TypesetterSGOne()
    }
    
    func createDiaphragm() -> Diaphragm {
       DiaphragmSGOne()
    }
    
}
