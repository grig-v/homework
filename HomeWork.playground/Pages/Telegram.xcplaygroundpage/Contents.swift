import Foundation
import UIKit


//MARK: 1. Спроектировать телеграм
// struct User
let u1 = try? User(name: "Georgiy", photo: UIImage(), id: 1)
let u2 = try? User(name: "Barboris", photo: UIImage(), id: 2)
let u3 = try? User(name: "Alex", photo: UIImage(), id: 3)
// without a photo
let u4 = try! User(name: "Martin", id: 4)
let u5 = try! User(name: "Sanyok", photo: nil, id: 5)
// User-Optional
let u6: User? = try? User(name: "Tiger777", photo: UIImage(), id: 6)
let u7: User? = try? User(name: "Alexey", photo: nil, id: 7)
let u8: User? = nil

do {
    let u9 = try User(name: "", id: 9)
} catch UserError.emptyName(let reason) {
    print(reason) // prints: Name can't be empty string, but you can setup nil
}


    
let users: [User?] = [u1, u2, u3, u4, u5, u6, u7, u8]
let noNilUsers: [User] = users.compactMap { $0 }
let usersWithPhoto: [User] = users.compactMap { (($0?.photo) != nil) ? $0 : nil }


// struct Chat
let chat1 = Chat(user: u1)
let chat3 = Chat(user: u3)
let chat2 = Chat(user: u3)
// Chat with optional-users
let chat4 = Chat(user: u8)

 let message1 = try? chat1.textMessage(to: u2, message: "Hey dude")

do {
    let message2 = try chat2.textMessage(to: u1, message: "Do you want drink some coffe?")
} catch .notFound(let reason) {
    print(reason)
}

do {
    try chat1.textMessage(to: u8, message: "Arrrr")
} catch .notFound(let reason) {
    print(reason)
}

//try! chat4.textMessage(to: u1, message: "RRrrr") fatal error
try? chat1.textMessage(to: u7, message: "How can i set up a photo?")




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


let userInfo1 = try? showUserInfo(for: u1)
do {
    let userInfo2 = try showUserInfo(for: u1)
    print(userInfo2)
} catch .notFound(let reason) {
    print(reason)
}

 do {
    let userInfo3 = try showUserInfo(for: u8)
     print(userInfo3)
 } catch .notFound(let reason) {
     print(reason)
 }

do {
   print(try showUserInfo(for: u7)) 
} catch .notFound(let reason) {
    print(reason)
}

    












