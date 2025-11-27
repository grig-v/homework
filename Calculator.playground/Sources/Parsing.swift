//
//  Parsing.swift
//
//
//  Created by Barborisss Macaroni on 19.11.25.
//
import Foundation

//MARK: STEP 1: parsing

public class Parsing {
    public init() {}
    
    public func toParse(_ expression: String) -> [String] {
        let scanner = Scanner(string: expression)
        
        var tokens: [String] = []
        
        while !scanner.isAtEnd {
            if  let op = scanner.scanCharacters(from: CharacterSet(charactersIn: "+-*/()")) {
                tokens.append(op)
            } else if let number = scanner.scanInt() {
                tokens.append(String(number))
            } else {
                scanner.currentIndex = scanner.string.index(after: scanner.currentIndex)
            }
        }
        return tokens
    }
    
}
