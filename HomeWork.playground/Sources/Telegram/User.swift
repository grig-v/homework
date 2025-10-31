//
//  User.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//
import UIKit

public struct User {
    public let name: String?
    public let photo: UIImage?
    public let id: Int
    
    public init(name: String?, photo: UIImage?, id: Int) throws {
        guard name != "" else { throw UserError.emptyName(reason: "Name can't be empty string, but you can setup nil") }
        self.name = name
        self.photo = photo
        self.id = id
    }
    
//    Without a photo
    public init(name: String?, id: Int) throws {
        guard name != "" else { throw UserError.emptyName(reason: "Name can't be empty string, but you can setup nil") }
        self.name = name
        self.photo = nil
        self.id = id
    }
}


