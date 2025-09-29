//MARK: - домашка if else 23.09.25

// 1. Если данные загрузились и юзер залогинен, распечатать — показать профиль пользователя.
// 2. Иначе если данные загрузились, но пользователь не залогинен, распечатать - показать форму регистрации
// 3. Иначе если нужно показать ошибку данных или нет подключения к сети, распечатать - что-то пошло не так
// 4. Иначе распечатать - показать скелет экрана I

var dataLoaded = true
var userLogIn = false
var showDataError = false
var internetIsAble = true

if showDataError || !internetIsAble {  // Сначала проверяем есть ли интернет и нужно ли показывать ошибку
    print("Something went wrong...")
} else if dataLoaded && userLogIn {
    print("Show the profile")
} else if dataLoaded && !userLogIn {
    print("Show the registration form")
} else {
    print("Show the main page")
}

// MARK: - Домашка Switch 25.09.25
// Домашка - сделать тоже самое с помощью switch и отдельно тернарными операторами

// 1. Если данные загрузились и юзер залогинен, распечатать - показать профиль пользователя.
// 2. Иначе если данные загрузились, но пользователь не залогинен, распечатать — показать форму регистрации
// 3. Иначе если нужно показать ошибку данных или нет подключения к сети, распечатать - что-то пошло не так
// 4. Иначе распечатать - показать скелет экрана

var data = true
var LogIn = true
var showError = false
var isInternetAble = true

let all = (data, LogIn, showError, isInternetAble)

switch all {
case (true, true,  false, true):
    print("Show the profile page")
case (true, false,  false, true):
    print("Show the registration form")
case let error where all.2 == true || all.3 == false:
    print("Something went wrong...")
default:
    print("Show the main page")
}

//C тернарным оператором:

let result = showError || !isInternetAble ? "Something went wrong..."
: data && LogIn ? "Show the profile"
: data && !LogIn ? "Show the registration form"
: "Show the main page"
print(result)

// MARK: - Домашка цыклы 26.09.25

// 1. Выведите в консоль все целые числа от 100 до 1.
var number = 100
while number >= 1 {
    print(number)
    number -= 1
}
// или

var number2 = 100
repeat {
    print(number2)
    number2 -= 1
} while number2 >= 1
// или

for i in stride(from: 100, through: 1, by: 1) {
    print(i)
}

// 2. Выведите в консоль все целые числа от -1000 до 0.
for i in -1000...0 {
    print(i)
}

// 3. Выведите в консоль все числа кратные трем в промежутке от 1 до 100.
for i in stride(from: 3, to: 100, by: 3) {
    print(i)
}
// или

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}

// 4. Найдите сумму всех целых четных чисел в промежутке от 1 до 100.
var evenNum = 0
for i in 1...100 {
    if i % 2 == 0 {
        evenNum += i
    }
}
print(evenNum)

