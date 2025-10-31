//
//  Chat.swift
//  
//
//  Created by Barborisss Macaroni on 21.10.25.
//

public struct Chat {
    public let user: User?
    
    public func textMessage(to recipient: User?, message: String) throws(UserError) {
        guard let recipientName = recipient?.name, let senderName = self.user?.name else {
            throw .notFound(reason: "Recipient or(and) sender was not found")
        }
            print("\(senderName) sent to \(recipientName) the following message '\(message)'")
    }
    
    public init(user: User?) {
        self.user = user
    }
}







