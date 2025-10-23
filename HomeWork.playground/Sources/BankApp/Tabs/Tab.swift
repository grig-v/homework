//
//  Tab.swift
//  
//
//  Created by Barborisss Macaroni on 23.10.25.
//


//open class Tab {
//    public var settings = Setting()
//    
//    public init(settings: Setting = Setting()) {
//        self.settings = settings
//    }
//    public func changeTheme() {
//        if self.settings.settings.darkMode {
//            self.settings.settings.darkMode = false
//        } else {
//            self.settings.settings.darkMode = true
//        }
//    }
//}
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
