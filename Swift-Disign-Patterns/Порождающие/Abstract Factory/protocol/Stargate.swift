//
//  Stargate.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

protocol Stargate {
    var chevronsNumbers: Int { get }
    var rotaryMechanism: String { get }
    var style: String { get }
    
    func activate()
    func deactivate()
}
