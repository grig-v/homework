//
//  Chat.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//


public struct Chat {
    public let user: User
    
    public func textMessage(to recipient: User, message: String) {
        print("\(user.name) sent to \(recipient.name) the following message '\(message)'")
    }
    
    public init(user: User) {
        self.user = user
    }
}
