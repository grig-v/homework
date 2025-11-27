//
//  SortStation.swift
//  
//
//  Created by Barborisss Macaroni on 21.11.25.
//
//MARK: STEP 2: Sort station algorythm

public class SortStation {
    public func makeBackPolish(from expression: [String]) -> [String] {
        var inference: [String] = []
        var stack: [String] = []
        
        for token in expression {
            switch token {
            case "(":
                stack.append(token)
            case ")":
                while stack.last != "(" { inference.append(stack.removeLast()) }
                stack.removeLast()
            case "+", "-" :
                //            While at the top of the stack any operator {...}
                while let op = stack.last, Operators(rawValue: op) != nil  {
                    inference.append(stack.removeLast())
                }
                stack.append(token)
            case "*", "/":
                while stack.last == "*" || stack.last == "/" {
                    inference.append(stack.removeLast())
                }
                stack.append(token)
            default:
                inference.append(token)
            }
        }
        inference.append(contentsOf: stack.reversed())
        return inference
    }
    public init(){}
}
