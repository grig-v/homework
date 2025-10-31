//
//  UserError.swift
//
//
//  Created by Barborisss Macaroni on 30.10.25.
//


public enum UserError: Error {
    case notFound(reason: String)
    case emptyName(reason: String)
}
