import Foundation
import UIKit


//MARK: 1. Спроектировать телеграм
// struct User
let u1 = User(name: "Georgiy", photo: UIImage(), id: 1)
let u2 = User(name: "Barboris", photo: UIImage(), id: 2)
let u3 = User(name: "Alex", photo: UIImage(), id: 3)
// without a photo
let u4 = User(name: "Martin", id: 4)
let u5 = User(name: "Sanyok", photo: nil, id: 5)
// User-Optional
let u6: User? = User(name: "Tiger777", photo: UIImage(), id: 6)
let u7: User? = User(name: "Alexey", photo: nil, id: 7)
let u8: User? = nil

let users: [User?] = [u1, u2, u3, u4, u5, u6, u7, u8]
let noNilUsers: [User] = users.compactMap { $0 }
let usersWithPhoto: [User] = users.compactMap { (($0?.photo) != nil) ? $0 : nil }


// struct Chat
let chat1 = Chat(user: u1)
chat1.textMessage(to: u2, message: "Hey dude")
let chat2 = Chat(user: u3)
chat2.textMessage(to: u1, message: "Do you want drink some coffe?")
let chat3 = Chat(user: u3)

// Chat with optional-users
chat1.textMessage(to: u8, message: "Arrrr") // prints Recipient or(and) sender not found
let chat4 = Chat(user: u8)
chat4.textMessage(to: u1, message: "RRrrr") // prints Recipient or(and) sender not found
chat1.textMessage(to: u7, message: "How can i set up a photo?")




// struct Settings, class Theme
Settings.switchTheme() // Dark mode is OFF
Settings.switchTheme() // Dark mode is ON

// struct Folders
var folders = Folders(allFolders: ["Непрочитанные": [chat1]])
folders.addFolder(name: "OM🐺", chats: [chat2])
folders.addFolder(name: "Default", chats: [chat1, chat3])

// struct MainScreen, enum TabBar, struct Folders
var mainScr1 = MainScreen(folderBar: folders, currentChat: chat3, tabBar: .calls)
mainScr1.tabSwitcher(to: .chats)
var mainScr2 = MainScreen(folderBar: folders, currentChat: chat2, tabBar: .contacts)
var mainScr3 = MainScreen(folderBar: folders, currentChat: chat1, tabBar: .settings)

showUserInfo(for: u1)
showUserInfo(for: u8)
showUserInfo(for: u7)
    












