//
//  Validator.swift
//  
//
//  Created by Barborisss Macaroni on 26.11.25.
//

//MARK: validation
// The expression must be non empty
// Quantity of "(" must be equal quantity ")"
// The operators can't be the first or last symbol of a collection


    public func validator(_ expression: [String]) throws(ValidationError)-> [String] {
        //    Validation for non-empty array
        guard !expression.isEmpty else { throw.emptyExpression(reason: "Expression can't be empty") }
        
        //    Quantity of "(" must be equal quantity ")"
        if expression.filter({ $0 == "(" }).count != expression.filter({ $0 == ")" }).count {
            throw.parenthesisError(reason: "The quantity of \"(\" and \")\" must be equal")
        }
        //   The operators can't be the first (exept "-") or last symbol of a collection
        if let last = expression.last, Operators(rawValue: last) != nil || expression.first == "*" || expression.first == "/" || expression.first == "+"  {
            throw.operatorError(reason: "The operators can't be the first (exept \"-\") or last symbol of a collection")
        }
        return expression
    }

