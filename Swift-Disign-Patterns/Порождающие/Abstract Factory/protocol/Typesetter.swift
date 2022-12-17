//
//  Typesetter.swift
//  Stargate Abstract Factory
//
//  Created by Torear on 05.10.2022.
//

import Foundation

protocol Typesetter {
    var enegrySource: String { get }
    var style: String { get }
    
    func didTupChevron()
}
