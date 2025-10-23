//
//  Settings.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//


public struct Settings {
    nonisolated(unsafe) private(set) static var theme: Theme = Theme(darkMode: true)
    
    public static func switchTheme() {
        if theme.darkMode {
            theme.darkMode = false
            print("Dark mode is OFF")
        } else {
            theme.darkMode = true
            print("Dark mode is ON")
        }
    }
}