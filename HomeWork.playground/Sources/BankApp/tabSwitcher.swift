//
//  tabSwitcher.swift
//  
//
//  Created by Barborisss Macaroni on 23.10.25.
//

@MainActor public func tabSwitcher(tab: TabsBar) -> Tab {
    switch tab {
    case .home:
        return Home(cards: [])
    case .products:
        return Products()
    case . operations:
        return Operations()
    case .finances:
        return Finances()
    case .more:
        return More()
    }
}
