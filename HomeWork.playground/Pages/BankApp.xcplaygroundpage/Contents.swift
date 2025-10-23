//: [Previous](@previous)

import Foundation

// struct Card
var card1 = Card(number: 1234123415345423, name: "Vasya Pupkin")
var card2 = Card(number: 934981579248751, name: "Naruto Uzumaki")
var card3 = Card(number: 24095348, name: "Jimmy Hendrix")

card1.topUpBalance(currency: .usdt, sum: 15)
card1.topUpBalance(currency: .gel, sum: 7)

card1.showCurrentAmount()
card1.spend(currency: .usdt, sum: 4)
card1.showCurrentAmount()
card1.spend(currency: .usdt, sum: 20)

card1.transfer(to: &card2, currency: .usdt, sum: 11)
card1.transfer(to: &card2, currency: .usdt, sum: 4)

// enum TabsBar
let HomeTab = TabsBar.home
let productsTab = TabsBar.products

// Tabs instances
let home = Home(cards: [card1, card2, card3])
let products = Products()
let operations = Operations()
let finances = Finances()
let more = More()


let Tab1 = tabSwitcher(tab: HomeTab)
let Tab2 = tabSwitcher(tab: TabsBar.products)


// Единые настройки для всех Tab и его потомков
// СМ Options и Tab
Tab1.notifications // true

Tab2.toggleNotifications()
Tab2.notifications // false

Tab1.notifications // false








  





