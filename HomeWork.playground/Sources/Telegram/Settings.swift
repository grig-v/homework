//
//  Settings.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//


public struct Settings {
    nonisolated(unsafe) private(set) static var theme: Theme = Theme(darkMode: true)
    
    public static func switchTheme() {
        theme.darkMode.toggle()
            print("Dark mode is \(theme.darkMode)")
    }
}
