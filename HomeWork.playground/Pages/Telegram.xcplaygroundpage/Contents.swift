import Foundation
import UIKit


//MARK: 1. Спроектировать телеграм
// struct User
let u1 = User(name: "Georgiy", photo: UIImage(), id: 1)
let u2 = User(name: "Barboris", photo: UIImage(), id: 2)
let u3 = User(name: "Alex", photo: UIImage(), id: 3)

// struct Chat
let chat1 = Chat(user: u1)
chat1.textMessage(to: u2, message: "Hey dude")
let chat2 = Chat(user: u3)
chat2.textMessage(to: u1, message: "Do you want drink some coffe?")
let chat3 = Chat(user: u3)

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












