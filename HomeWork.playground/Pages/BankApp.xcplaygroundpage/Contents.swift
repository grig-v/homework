

import Foundation

// struct Card
var card1 = try? Card(number: 1234123415345423, name: "Vasya Pupkin")
var card2 = try? Card(number: 934981579248751, name: "Naruto Uzumaki")
var card3 = try? Card(number: 24095348, name: "Jimmy Hendrix")
var card4 = try? Card(number: nil, name: nil)
do {
    var card5 = try Card(number: 12451254, name: "")
} catch CardError.emptyName(let reason) {
    print(reason)
}

let customer = card3?.name
do {
    try card1?.topUpBalance(currency: .usdt, sum: 100)
} catch CardError.topUpError(let reason) {
    reason
}
try? card1?.topUpBalance(currency: .gel, sum: 7)

card1?.showCurrentAmount()
try? card1?.spend(currency: .usdt, sum: 4)
card1?.showCurrentAmount()
try? card1?.spend(currency: .usdt, sum: 20)


card1?.showCurrentAmount()
do {
    try card1?.transfer(to: &card2, currency: .usdt, sum: 11)
} catch CardError.transferError(let reason) {
    print(reason) 
}
card1?.showCurrentAmount()



// enum TabsBar
let HomeTab = TabsBar.home(Home(cards: nil))
let productsTab = TabsBar.products(Products())

// Tabs instances
let home = Home(cards: [card1, card2, card3])
var homeOptional = Home(cards: [card1, nil, card3, nil, nil, card4])

// Optional cheining
homeOptional.cards?[0]?.name // "Vasya Pupkin"
homeOptional.cards?[1]?.name // nil
homeOptional.cards?.append(card4)
homeOptional.cards?.last
homeOptional.cards?[5]?.name // nil
homeOptional.cards?[5]?.name = "Vladimir the Circle"

card4?.returnName() //"The name not found"
homeOptional.cards?[5]?.returnName() // "Vladimir the Circle"

homeOptional.cards?[5]?.returnNumber() // 0
homeOptional.cards?[5]?.number = 124513465234
homeOptional.cards?[5]?.returnNumber() // 124513465234

let cards: [Card?] = homeOptional.cards ?? [nil]
let realCards = cards.compactMap { $0 }

let realCards2 = homeOptional.noNilCards()






let products = Products()
let operations = Operations()
let finances = Finances()
let more = More()


let Tab1 = tabSwitcher(tab: HomeTab)
let Tab2 = tabSwitcher(tab: TabsBar.products(Products()))


// Единые настройки для всех Tab и его потомков
// СМ Options и Tab
Tab1.notifications // true

Tab2.toggleNotifications()
Tab2.notifications // false

Tab1.notifications // false








  





