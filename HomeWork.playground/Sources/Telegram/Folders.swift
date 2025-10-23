//
//  Folders.swift
//  
//
//  Created by Barborisss Macaroni on 22.10.25.
//


public struct Folders {
    public var allFolders: [String: [Chat]]
    
   public init(allFolders: [String : [Chat]]) {
        self.allFolders = allFolders
    }
    
    public mutating func addFolder(name: String, chats: [Chat]) {
        self.allFolders[name] = chats
    }
}
