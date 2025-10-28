//
//  Home.swift
//  
//
//  Created by Barborisss Macaroni on 23.10.25.
//


public final class Home: Tab {
    public var cards: [Card?]?
    
    public init(cards: [Card?]?) {
        self.cards = cards
    }
    
    public func noNilCards() -> [Card] {
        var result = [Card]()
        if let cards {
            for case let i? in cards {
                result.append(i)
            } 
        }
        return result
    }
}
