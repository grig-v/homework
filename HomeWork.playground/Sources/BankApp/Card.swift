//
//  Card.swift
//
//
//  Created by Barborisss Macaroni on 22.10.25.
//


public struct Card {
    public var number: Int?
    public var name: String?
    private var amount = [Currency: Int]()
    
    public init(number: Int?, name: String?) {
        self.number = number
        self.name = name
        for i in Currency.allCases {
            self.amount[i] = 0
        }
    }
    
    public mutating func topUpBalance(currency: Currency, sum: Int) {
        if sum < 0 {
            print("Error. Sum must be greater than 0")
        } else {
            self.amount[currency]! += sum
            print("Your account was replenished by \(sum)\(currency.rawValue)")
        }
    }
    
    public mutating func spend(currency: Currency, sum: Int) {
        if sum > self.amount[currency]! {
            print("Insufficient funds in the account :c")
        } else {
            self.amount[currency]! -= sum
            print("\(currency.rawValue)\(sum) has been debited from your account")
        }
    }
    
    public func showCurrentAmount() {
        print("Your current amount is \(Currency.gel.rawValue)\(amount[.gel]!), \(Currency.usdt.rawValue)\(amount[.usdt]!), \(Currency.eur.rawValue)\(amount[.eur]!), \(Currency.rub.rawValue)\(amount[.rub]!).")
    }
    
    public mutating func transfer(to card: inout Card, currency: Currency, sum: Int) {
        if self.amount[currency]! >= sum {
            self.spend(currency: currency, sum: sum)
            card.topUpBalance(currency: currency, sum: sum)
        } else {
            print("Insufficient funds in the account :c")
        }
    }
    // optional binding
    public func returnName() -> String? {
        guard let name = self.name else { return "The name not found" }
        return name
    }
    
    // nil coalescing
    public func returnNumber() -> Int? {
       return self.number ?? 0
    }
    
    
}
