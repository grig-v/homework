//
//  Tab.swift
//  
//
//  Created by Barborisss Macaroni on 23.10.25.
//
open class Tab {
    public var darkMode: Bool {
        get { Options.shared.darkMode }
        set { Options.shared.darkMode = newValue }
    }
    public var notifications: Bool {
        get { Options.shared.notifications }
        set { Options.shared.notifications = newValue }
    }
    
    public init() {}
    
    public func toggleTheme() {
        darkMode.toggle()
    }
    
    public func toggleNotifications() {
        notifications.toggle()
    }
}
