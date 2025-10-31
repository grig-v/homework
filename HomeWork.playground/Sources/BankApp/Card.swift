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
    
    public init(number: Int?, name: String?) throws {
        guard name != "" else { throw CardError.emptyName(reason: "The name feild can't be empty, but you can set up nil") }
        self.number = number
        self.name = name
        for i in Currency.allCases {
            self.amount[i] = 0
        }
    }
    
    public mutating func topUpBalance(currency: Currency, sum: Int) throws {
        guard sum < 0 else { throw CardError.topUpError(reason: "Error. Sum must be greater than 0") }
        self.amount[currency]! += sum
        print("\(self.name ?? "noName")'s account was replenished by \(sum)\(currency.rawValue)")
        
    }
    
    public mutating func spend(currency: Currency, sum: Int) throws {
        guard let amount = self.amount[currency], amount >= sum  else { throw CardError.spendError(reason: "Insufficient funds in the account :c") }
        self.amount[currency]! -= sum
        print("\(currency.rawValue)\(sum) has been debited from your account")
    }
    
    public func showCurrentAmount() {
        print("\(self.name ?? "noName")'s current amount is \(Currency.gel.rawValue)\(amount[.gel]!), \(Currency.usdt.rawValue)\(amount[.usdt]!), \(Currency.eur.rawValue)\(amount[.eur]!), \(Currency.rub.rawValue)\(amount[.rub]!).")
    }
    
    public mutating func transfer(to card: inout Card?, currency: Currency, sum: Int) throws {
        guard let amount = self.amount[currency], amount >= sum  else { throw CardError.transferError(reason: "Insufficient funds in the account :c") }
        guard card != nil else {
            throw CardError.transferError(reason: "Recipient's card doesn't exist") }
        
        try self.spend(currency: currency, sum: sum)
        try card?.topUpBalance(currency: currency, sum: sum)
        print("\(currency.rawValue)\(sum) was transferred from \(self.name ?? "noName") to \(card?.name ?? "noName")")
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


