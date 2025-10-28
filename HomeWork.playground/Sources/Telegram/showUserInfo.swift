//
//  showUserInfo.swift
//
//
//  Created by Barborisss Macaroni on 28.10.25.
//


public func showUserInfo(for user: User?) -> String {
    guard case let user? = user else { return "The user doesn't exist" }
    let name: String
    let photo: String
    if case let nickName? = user.name {
        name = nickName
    } else {
        name = "nil"
    }
    if case let picture? = user.photo {
        photo = "true"
    } else {
        photo = "nil"
    }
    return "Name: \(name), photo: \(photo), id: \(user.id)"
}
