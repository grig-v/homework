//
//  Chat.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//


public struct Chat {
    public let user: User?
    
    public func textMessage(to recipient: User?, message: String) {
        if case let recipient? = recipient, let name = self.user?.name {
            print("\(name) sent to \(recipient.name) the following message '\(message)'")
        } else {
            print("Recipient or(and) sender not found")
        }
    }
    
    public init(user: User?) {
        self.user = user
    }
}
