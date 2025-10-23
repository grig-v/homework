//
//  MainScreen.swift
//  
//
//  Created by Barborisss Macaroni on 22.10.25.
//

public struct MainScreen {
    public var folderBar: Folders
    public var currentChat: Chat
    private(set) var tabBar: TabBar
    
    public init(folderBar: Folders, currentChat: Chat, tabBar: TabBar) {
        self.folderBar = folderBar
        self.currentChat = currentChat
        self.tabBar = tabBar
        self.tabBarState
    }
    public var tabBarState: Void {
        switch self.tabBar {
        case .contacts:
            print("Show ContactList")
        case .calls:
            print("Show CallsList")
        case .chats:
            print("Show ChatList")
        case .settings:
            print("Show Settings")
        }
    }
    
    public mutating func tabSwitcher(to newTab: TabBar) {
        self.tabBar = newTab
        self.tabBarState
    }
}
