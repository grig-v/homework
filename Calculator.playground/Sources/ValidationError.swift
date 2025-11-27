//
//  ValidationError.swift
//  
//
//  Created by Barborisss Macaroni on 18.11.25.
//


public enum ValidationError: Error {
    case emptyExpression(reason: String)
    case tokenError(reason: String)
    case parenthesisError(reason: String)
    case operatorError(reason: String)
}
