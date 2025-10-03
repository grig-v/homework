////MARK: - 1. Домашка if else 23.09.25
//
//// 1. Если данные загрузились и юзер залогинен, распечатать — показать профиль пользователя.
//// 2. Иначе если данные загрузились, но пользователь не залогинен, распечатать - показать форму регистрации
//// 3. Иначе если нужно показать ошибку данных или нет подключения к сети, распечатать - что-то пошло не так
//// 4. Иначе распечатать - показать скелет экрана I
//
//var dataLoaded = true
//var userLogIn = false
//var showDataError = false
//var internetIsAble = true
//
//if showDataError || !internetIsAble {  // Сначала проверяем есть ли интернет и нужно ли показывать ошибку
//    print("Something went wrong...")
//} else if dataLoaded && userLogIn {
//    print("Show the profile")
//} else if dataLoaded && !userLogIn {
//    print("Show the registration form")
//} else {
//    print("Show the main page")
//}
//
//// MARK: - 2. Домашка Switch 25.09.25
//// Домашка - сделать тоже самое с помощью switch и отдельно тернарными операторами
//
//// 1. Если данные загрузились и юзер залогинен, распечатать - показать профиль пользователя.
//// 2. Иначе если данные загрузились, но пользователь не залогинен, распечатать — показать форму регистрации
//// 3. Иначе если нужно показать ошибку данных или нет подключения к сети, распечатать - что-то пошло не так
//// 4. Иначе распечатать - показать скелет экрана
//
//var data = true
//var LogIn = true
//var showError = false
//var isInternetAble = true
//
//let all = (data, LogIn, showError, isInternetAble)
//
//switch all {
//case (true, true,  false, true):
//    print("Show the profile page")
//case (true, false,  false, true):
//    print("Show the registration form")
//case let error where all.2 == true || all.3 == false:
//    print("Something went wrong...")
//default:
//    print("Show the main page")
//}
//
////C тернарным оператором:
//
//let result = showError || !isInternetAble ? "Something went wrong..."
//: data && LogIn ? "Show the profile"
//: data && !LogIn ? "Show the registration form"
//: "Show the main page"
//print(result)
//
//// MARK: - 3. Домашка цыклы 26.09.25
//
//// 1. Выведите в консоль все целые числа от 100 до 1.
//var number = 100
//while number >= 1 {
//    print(number)
//    number -= 1
//}
//// или
//
//var number2 = 100
//repeat {
//    print(number2)
//    number2 -= 1
//} while number2 >= 1
//// или
//
//for i in stride(from: 100, through: 1, by: 1) {
//    print(i)
//}
//
//// 2. Выведите в консоль все целые числа от -1000 до 0.
//for i in -1000...0 {
//    print(i)
//}
//
//// 3. Выведите в консоль все числа кратные трем в промежутке от 1 до 100.
//for i in stride(from: 3, to: 100, by: 3) {
//    print(i)
//}
//// или
//
//for i in 1...100 {
//    if i % 3 == 0 {
//        print(i)
//    }
//}
//
//// 4. Найдите сумму всех целых четных чисел в промежутке от 1 до 100.
//var evenNum = 0
//for i in 1...100 {
//    if i % 2 == 0 {
//        evenNum += i
//    }
//}
//print(evenNum)

//MARK: - 4. Домашка коллекции

//1. Дан массив: DONE
let arr0 = [1, 2, 3, 4, 5, 6]
//По очереди выведите в консоль подмассивы из двух элементов нашего массива:
//[1, 2]
//[3, 4]
//[5, 6]
var container: [Int] = []
for i in arr0 {
    container.append(i)
    if container.count == 2 {
        print(container)
        container.removeAll()
    }
}


//2. Даны два массива: DONE
let arr1 = [1, 2, 3]
let arr2 = [4, 5, 6]
//Слейте эти массивы в новый массив:
//[1, 2, 3, 4, 5, 6]
var mutableArr = arr1
mutableArr.append(contentsOf: arr2)

//3. Дан массив: DONE
var arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//Удалите из него 3, 7, 9 и выведите результат в консоль
let toRemove = [3, 7, 9]
arr3.removeAll(where: {toRemove.contains($0)})
print(arr3)

//4. Дан массив DONE
let arr4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
//Найдите сумму первой половины элементов этого массива.
let fold = arr4.count / 2 - 1
var sum = 0
for i in arr4[0...fold] {
    sum += i
}

//5. Дан массив DONE
var arr5 = [1, 2, -3, 4, 5, -6, -7, 8, 9, 10, -11, -12, 13, -14]
//Подсчитайте количество отрицательных чисел в этом массиве.
sum = 0
for i in arr5 {
    if i <= 0 {
        sum += i
    }
}

//6. Дан массив DONE
var arr6 = [1, 2, -3, 4, 5, -6, -7, 8, 9, 10, -11, -12, 13, -14]
//Оставьте в нем только положительные числа.
var index = 0
for i in arr6 {
    if i <= 0 {
        index = arr6.firstIndex(of: i)!
        arr6.remove(at: index)
    }
}


//7. Дан массив: DONE
let arr7 = ["один", "два", "три"]
//Сделай массив в котором будут те же слова но с большой буквы – ["Один", "Два", "Три"]
//Подсказка: поможет метод строки uppercased(). Используй документацию к типу String
var arrUpperCaseed: [String] = [] //arr7.map({$0.uppercased()})
for word in arr7 {
    arrUpperCaseed.append(word.prefix(1).uppercased() + word.dropFirst())
}

//8. Дана строка: DONE
let str0 = "abcde"
//Распечатай по одному символу в консоли
//Подсказка: ты можешь идти в цикле по элементам строки (тип Character) также, как по массиву
for i in str0 {
    print(i)
}

//9*. Дана строка: DONE
var str1 = "abcde"

//Переведите в верхний регистр все нечетные (по индексам) буквы этой строки . В нашем случае должно получится следующее: "AbCdE"
//Подсказка: чтобы итерироваться по индексам, а не по символам, ты можешь вызвать у строки свойство indices и также передать в цикл последовательность
//Подсказка2: Индексы строк не Int. Это из-за устройства строки внутри – некоторые символы могут быть сочетанием других символов. Для того чтобы получить Int тебе потребуется метод строки .distance(from:to:) и поле startIndex
//Подсказка3: Можно собрать новую строку, а можно заменять символы по индексам с помощью replaceSubrange(_:with:)
var newString = ""
for i in str1.indices {
    var index = str1.distance(from: str1.startIndex, to: i)
    if index % 2 == 0 {
        newString += String(str1[i]).uppercased()
    } else {
        newString += String(str1[i])
    }
}
newString

// решение с replaceSubrange(_:with:)
for i in str1.indices {
    var index = str1.distance(from: str1.startIndex, to: i)
    if index % 2 == 0 {
        str1.replaceSubrange(i...i, with: String(str1[i]).uppercased())
    }
}

//10. Дан массив: DONE
let arr8 = [1, 2, 3, 4, 5, 6]
//Поделите сумму элементов, стоящих на четных позициях, на сумму элементов, стоящих на нечетных позициях.
var evenIndexSum = 0
var oddIndexSum = 0
for i in arr8.indices {
    if i % 2 == 0 {
        evenIndexSum += arr8[i]
    } else {
        oddIndexSum += arr8[i]
    }
}
let division = Double(evenIndexSum) / Double(oddIndexSum)



//11. Дан массив: DONE
var arr9 = [123, 456, 789]
//Напишите код, который перевернет числа в этом массиве по следующему принципу: [321, 654, 987]
//Подсказка: у этой задачи несколько решений, проще всего использовать конвертацию в строки и прочитать в документации, как переворачивать строку. Но можно решить и без конвертации
var reversedArr: [Int] = []
for element in arr9 {
    reversedArr.append(Int(String(String(element).reversed()))!)
    arr9 = reversedArr
}

// вариант c sorted(by:)
arr9 = [123, 456, 789]
reversedArr.removeAll()
for element in arr9 {
    reversedArr.append(Int(String(String(element).sorted(by: >)))!)
    arr9 = reversedArr
}

//12. Дан массив: DONE
let arr18 = [1, 2, 3, 4, 5, 6]
//Слейте пары элементов вместе: [[12, 34, 56]]
var tempStr = ""
var resultArr = [[Int]]()

for i in arr18 {
    tempStr += String(i)
    while tempStr.count == 2 {
        resultArr.append([Int(tempStr)!])
        tempStr.removeAll()
    }
}
resultArr



//13*. Дана некоторая строка со словами: DONE
var string = "aaa bbb ccc eee"
//Сделайте заглавным первый символ второго слова в этой строке. В нашем случае должно получится следующее:"aaa Bbb ccc Eee fff"
//Подсказка: Аналогично 9 задаче
var wordArr = string.split(separator: " ")

for i in wordArr.indices where i % 2 != 0 {
    let first = wordArr[i].prefix(1).uppercased()
    wordArr[i].replaceSubrange(wordArr[i].startIndex...wordArr[i].startIndex, with: first)
}
string = wordArr.joined(separator: " ")

//14*. Дан массив с числами: DONE
let arr10 = [1, 2, 3, 4, 5]
//Проверьте, что в этом массиве есть два одинаковых элемента подряд.
for i in arr10 {
    if arr10[i] == arr10.last {
        print("There is no two same elements in a row")
        break
    }
    else if arr10[i] == arr10[i+1] {
        print("The array contains two same elements in a row")
        break
    }
}

//15*. Дан массив: DONE
var arr11 = [
  [2, 1, 4, 3, 5],
  [3, 5, 2, 4, 1],
  [4, 3, 1, 5, 2],
]
//Отсортируйте элементы в каждом подмассиве.
var tempArr = [[Int]]()
for i in arr11 {
    tempArr.append(i.sorted())
}
arr11 = tempArr

//16*. Дан массив: DONE
let arr12 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]
//Найдите сумму элементов этого массива.
var container1 = [Int]()
var sum1 = 0

sum1 = 0
for subArr in arr12 {
    for int in subArr {
        sum += int
    }
}

//17*. Дан массив: DONE
let arr13 = [
  [
    [11, 12, 13],
    [14, 15, 16],
    [17, 18, 19],
  ],
  [
    [21, 22, 23],
    [24, 25, 26],
    [27, 28, 29],
  ],
  [
    [31, 32, 33],
    [34, 35, 36],
    [37, 37, 39],
  ],
]
//Найдите сумму элементов этого массива.
var sum3 = 0
for level2 in arr13 {
    for level3 in level2 {
        for int in level3 {
            sum += int  // ееее рок \m/
        }
    }
}

//18. Дан словарь: DONE
let dictionary = [
  "firstArray": [
    11,
    12,
    13,
  ],
  "secondArray": [
    21,
    22,
    23,
  ],
  "thirdArray": [
    24,
    25,
    26,
  ],
]
//Найдите сумму всех вложенных элементов словаря
var sum4 = 0
var arrContainer = [Int]()
for arr in dictionary.values {
    for int in arr {
        sum4 += int
    }
}
 

//19. Дан словарь: DONE
let dictionary2: [String: Any] = [
  "firstInnerDictionary": [
    1: 11,
    2: 12,
    3: 13,
  ],
  "secondInnerDictionary": [
    1: 21,
    2: 22,
    3: 23,
  ],
  "array": [
    24,
    25,
    26,
  ],
]
//Найдите сумму всех вложенных элементов словаря
var contArr = [Int]()
var sum5 = 0
for value in dictionary2.values {
    if let array = value as? [Int] {
        contArr.append(contentsOf: array)
        contArr
    } else if let dictionary = value as? [Int: Int] {
        contArr.append(contentsOf: dictionary.values)
    } else {
        print("Something went wrong")
    }
}
for i in contArr {
    sum5 += i // The result is 177
}

//20. Сформируйте с помощью циклов следующий массив: DONE
//[
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//]

var arr14 = [[Int]]()
var arrContainer2 = [Int]()

for i in 1...3 {
    arrContainer2.append(i)
}
for _ in 1...5 {
    arr14.append(arrContainer2)
}



//21. Дан массив: DONE
let arr17 = [
   [1, 2, 3],
   [4, 5, 6],
   [7, 8, 9]
]
var singleLevelArr = [Int]()
//Слейте элементы этого массива в один одномерный массив:
//[1, 2, 3, 4, 5, 6, 7, 8, 9]
for i in arr17 {
    for j in i {
        singleLevelArr.append(j)
    }
}



//22. Дан массив: DONE
let arr16 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
// Сделай словарь, который будет под ключами min, max, avarage хранить соответствующие значения из массива
let avarage = (arr16.min()! + arr16.max()!) / 2

let dictionary4: [String: Int] =
["min": arr16.min()!,
 "avarage": avarage,
 "max": arr16.max()!]


//23. Дан словарь: DONE
let dictionary3 = [
   "min" : -100,
   "max" : 42
]
//Собери массив от минимального значения до максимального с шагом 2, используя значения из словаря
var arr15 = [Int]()
for i in stride(from: dictionary3["min"]!, through: dictionary3["max"]!, by: 2) {
    arr15.append(i)
}




