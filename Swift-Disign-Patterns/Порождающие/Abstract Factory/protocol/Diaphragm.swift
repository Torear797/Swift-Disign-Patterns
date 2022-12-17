//
//  Diaphragm.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

protocol Diaphragm {
    var material: String { get }
    var strength: Float { get }
    
    func close()
    func open()
}
