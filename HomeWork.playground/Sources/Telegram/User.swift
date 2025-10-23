//
//  User.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//
import UIKit

public struct User {
    public let name: String
    public let photo: UIImage
    public let id: Int
    
    public init(name: String, photo: UIImage, id: Int) {
        self.name = name
        self.photo = photo
        self.id = id
    }
}
