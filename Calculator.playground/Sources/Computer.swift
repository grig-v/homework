//
//  Computer.swift
//
//
//  Created by Barborisss Macaroni on 21.11.25.
//
//MARK: STEP 3: computing the result

public class Computer {
    public func mathIt(_ backPolish: [String]) -> Double {
        var stack: [Double] = []
        var rightNum: Double = 0
        var leftNum: Double = 0
        
        for token in backPolish {
            if stack.count >= 2 && Operators(rawValue: token) != nil {
                rightNum = stack.removeLast()
                leftNum = stack.removeLast()
            }
            switch token {
            case "+":
                stack.append(leftNum + rightNum)
            case "-":
                stack.append(leftNum-rightNum)
            case "*":
                stack.append(leftNum*rightNum)
            case "/":
                stack.append(leftNum/rightNum)
            default:
                if let num = Double(token) {
                    stack.append(num)
                }
            }
        }
        return stack.removeLast()
    }
    public init(){}
}
