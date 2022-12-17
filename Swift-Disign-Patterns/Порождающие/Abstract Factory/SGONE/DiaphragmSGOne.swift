//
//  DiaphragmSGOne.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class DiaphragmSGOne: Diaphragm {
    var material: String = "naquada"
    
    var strength: Float = 100.0
    
    func close() {
       print("Close Diaphragm")
    }
    
    func open() {
        print("Activate Diaphragm")
    }
    
}
