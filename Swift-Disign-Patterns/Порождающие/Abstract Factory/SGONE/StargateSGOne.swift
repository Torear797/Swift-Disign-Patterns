//
//  StargateSGOne.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

final class StargateSGOne: Stargate {
    var chevronsNumbers = 38
    var rotaryMechanism = "Mechanics"
    var style = "SG One"
    
    func activate() {
        print("Open the gate")
    }
    
    func deactivate() {
        print("Close the gate")
    }
    
}
