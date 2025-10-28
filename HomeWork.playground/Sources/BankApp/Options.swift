//
//  Options.swift
//
//
//  Created by Barborisss Macaroni on 23.10.25.
//


public class Options {
    nonisolated(unsafe) static let shared = Options()
    public var darkMode = false
    public var notifications = true
    init() {}
}


