//
//  StargateAbstractFactory.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

protocol StargateAbstractFactory {
    func createStargate() -> Stargate
    func createTypesetter() -> Typesetter
    func createDiaphragm() -> Diaphragm
}


//MARK: - Example Use
// let stargate = AtlantisFactory.createStargate()
// let typesetter = SGOneFactory.createTypesetter()
