//
//  StargateUniverse.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class StargateUniverse: Stargate {
    var chevronsNumbers = 38
    var rotaryMechanism = "Mechanics + Virtual"
    var style = "SG Universe"
    
    func activate() {
        print("Open the gate")
    }
    
    func deactivate() {
        print("Close the gate")
    }
    
}
