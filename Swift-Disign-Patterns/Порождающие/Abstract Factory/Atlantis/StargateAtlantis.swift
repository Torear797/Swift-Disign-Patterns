//
//  StargateAtlantis.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class StargateAtlantis: Stargate {
    var chevronsNumbers = 38
    var rotaryMechanism = "virtual"
    var style = "SG Atlantis"
    
    func activate() {
        print("Open the gate")
    }
    
    func deactivate() {
        print("Close the gate")
    }
    
}
