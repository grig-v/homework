//
//  showUserInfo.swift
//
//
//  Created by Barborisss Macaroni on 28.10.25.
//


public func showUserInfo(for user: User?) throws(UserError) -> String {
    guard case let user? = user else { throw .notFound(reason: "The user doesn't exist")  }
    let name: String
    let photo: String
    if case let nickName? = user.name {
        name = nickName
    } else {
        name = "no name"
    }
    if user.photo != nil {
        photo = "true"
    } else {
        photo = "no photo"
    }
    return "Name: \(name), photo: \(photo), id: \(user.id)"
    
    
}
