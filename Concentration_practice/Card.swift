//
//  Card.swift
//  Concentration_practice
//
//  Created by qiurong chen on 11/7/20.
//  Copyright © 2020 Xujuan Chen. All rights reserved.
//

import Foundation

struct Card: Hashable, Equatable {
    
    var hashValue: Int { return identifier }
    
    func hash(into hasher: inout Hasher){
        
    }

    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isMatched = false
    var isFaceUp = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
