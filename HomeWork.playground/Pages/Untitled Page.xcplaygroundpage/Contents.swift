//MARK: - Домашка functions
// Домашка

// Все предыдущие задачи домашки завернуть в функции.
// Все условия дано передавать параметрами.
// Все результаты возвращать.

//MARK: 1.
let arr0 = [1, 2, 3, 4, 5, 6]

/// По очереди выведите в консоль подмассивы из двух элементов нашего массива:
///[1, 2]
///[3, 4]
///[5, 6]
/// - Parameter array: [Int]
/// - Returns: Void
func splitPerTwo(array: [Int]) -> Void {
    var container: [Int] = []
    for i in array {
        container.append(i)
        if container.count == 2 {
            print(container)
            container.removeAll()
        }
    }
}
splitPerTwo(array: arr0)


//MARK: 2.
let arr1 = [1, 2, 3]
let arr2 = [4, 5, 6]
/// Слейте эти массивы в новый массив: [1, 2, 3, 4, 5, 6]
/// - Parameters:
///   - a: [Int]
///   - b: [Int]
/// - Returns: [Int]
func unit(a: [Int], b: [Int]) -> [Int] {
    var result = a
    result.append(contentsOf: b)
    return result
}
unit(a: arr1, b: arr2)

//MARK: 3.
var arr3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

/// Удалите из него 3, 7, 9 и выведите результат в консоль
/// - Parameters:
///   - removeArr: [Int]
///   - array: [Int]
func remove379(from array: inout[Int]) -> [Int] {
    var container = [Int]()
    for i in array {
        if i == 3 || i == 7 || i == 9 {
            // do nothing
        } else {
            container.append(i)
        }
    }
    array = container
    return array
}
remove379(from: &arr3)

//MARK: 4.
let arr4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
/// Найдите сумму первой половины элементов этого массива.
/// - Parameter array: [Int]
/// - Returns: Int
func sumFirstHalf(array: [Int]) -> Int {
    let halfIndex = arr4.count / 2 - 1
    var sum = 0
    for i in arr4[0...halfIndex] {
        sum += i
    }
    return sum
}
sumFirstHalf(array: arr4)

//MARK: 5.
var arr5 = [1, 2, -3, 4, 5, -6, -7, 8, 9, 10, -11, -12, 13, -14]
//Подсчитайте количество отрицательных чисел в этом массиве.
func oddCount(array: [Int]) -> Int {
    var sum = 0
    for i in array {
        if i <= 0 {
            sum += i
        }
    }
    return sum
}
oddCount(array: arr5)

//MARK: 6.
var arr6 = [1, 2, -3, 4, 5, -6, -7, 8, 9, 10, -11, -12, 13, -14]
//Оставьте в нем только положительные числа.
func evenOnly(array: inout [Int]) -> [Int] {
    var index = 0
    for i in array {
        if i <= 0 {
            index = array.firstIndex(of: i)!
            array.remove(at: index)
        }
    }
    return array
}
evenOnly(array: &arr6)


//MARK: 7.
let arr7 = ["один", "два", "три"]
//Сделай массив в котором будут те же слова но с большой буквы – ["Один", "Два", "Три"]
//Подсказка: поможет метод строки uppercased(). Используй документацию к типу String
func uppercasedFirstCharacter(array: [String]) -> [String] {
    var arrUpperCaseed: [String] = []
    for word in arr7 {
        arrUpperCaseed.append(word.prefix(1).uppercased() + word.dropFirst())
    }
    return arrUpperCaseed
}
uppercasedFirstCharacter(array: arr7)

//MARK: 8.
let str0 = "abcde"
//Распечатай по одному символу в консоли
//Подсказка: ты можешь идти в цикле по элементам строки (тип Character) также, как по массиву
func printAllCharacters(for string: String) -> () {
    for i in string {
        print(i)
    }
}
printAllCharacters(for: str0)


//MARK: 9*.
var str1 = "abcde"
//Переведите в верхний регистр все нечетные (по индексам) буквы этой строки . В нашем случае должно получится следующее: "AbCdE"
//Подсказка: чтобы итерироваться по индексам, а не по символам, ты можешь вызвать у строки свойство indices и также передать в цикл последовательность
//Подсказка2: Индексы строк не Int. Это из-за устройства строки внутри – некоторые символы могут быть сочетанием других символов. Для того чтобы получить Int тебе потребуется метод строки .distance(from:to:) и поле startIndex
//Подсказка3: Можно собрать новую строку, а можно заменять символы по индексам с помощью replaceSubrange(_:with:)
func iDontKnowHowToNameIt(_ str: String) -> String {
    var newString = ""
    for (intIndex, strIndex) in str.indices.enumerated() {
        var index = str.distance(from: str.startIndex, to: strIndex)
        if intIndex % 2 == 0 {
            newString += String(str[strIndex]).uppercased()
        } else {
            newString += String(str[strIndex])
        }
    }
    return newString
}
iDontKnowHowToNameIt(str1)

// решение с replaceSubrange(_:with:)

var oneMoreStr = str1 // "abcde"
func steelHaveNoOneIdea(for string: inout String) -> String {
    for (intIndex, StrIndex) in string.indices.enumerated() where intIndex % 2 == 0 {
            string.replaceSubrange(StrIndex...StrIndex, with: String(string[StrIndex]).uppercased())
    }
    return string
}
steelHaveNoOneIdea(for: &oneMoreStr)


//MARK: 10.
let arr8 = [1, 2, 3, 4, 5, 6]
//Поделите сумму элементов, стоящих на четных позициях, на сумму элементов, стоящих на нечетных позициях.
func divideEvenByOdd(for array: [Int]) -> Double {
    var evenSum = 0
    var oddSum = 0
    for (ind, num) in array.enumerated() {
        if ind % 2 == 0 {
            evenSum += num
        } else {
            oddSum += num
        }
    }
    return Double(evenSum) / Double(oddSum)
}
divideEvenByOdd(for: arr8)


//MARK: 11.
var arr9 = [123, 456, 789]
//Напишите код, который перевернет числа в этом массиве по следующему принципу: [321, 654, 987]
//Подсказка: у этой задачи несколько решений, проще всего использовать конвертацию в строки и прочитать в документации, как переворачивать строку. Но можно решить и без конвертации
func reversedElements(_ array: inout [Int]) -> [Int] {
    var reversedArr: [Int] = []
    for element in array {
        reversedArr.append(Int(String(String(element).reversed()))!)
    }
    array = reversedArr
    return array
}
reversedElements(&arr9)


// вариант c sorted(by:)
arr9 = [123, 456, 789]
func reversedElements2(_ array: inout [Int]) -> [Int] {
    var reversedArr: [Int] = []
    for element in array {
        reversedArr.append(Int(String(String(element).sorted(by: >)))!)
    }
    array = reversedArr
    return array
}
reversedElements2(&arr9)


//MARK: 12.
let arr18 = [1, 2, 3, 4, 5, 6]
//Слейте пары элементов вместе: [[12, 34, 56]]
func toPair(array: [Int]) -> [[Int]] {
    var tempStr = ""
    var resultArr = [[Int]]()
    
    for i in array {
        tempStr += String(i)
        while tempStr.count == 2 {
            guard let element = Int(tempStr) else { return [[]] }
            resultArr.append([element])
            tempStr.removeAll()
        }
    }
    return resultArr
}
toPair(array: arr18)



//MARK: 13*.
var string = "aaa bbb ccc eee"
//Сделайте заглавным первый символ второго слова в этой строке. В нашем случае должно получится следующее:"aaa Bbb ccc Eee fff"
//Подсказка: Аналогично 9 задаче
func everySecondWordUp(str: inout String) -> String {
    var wordArr = str.split(separator: " ")
    for i in wordArr.indices where i % 2 != 0 {
        let first = wordArr[i].prefix(1).uppercased()
        wordArr[i].replaceSubrange(wordArr[i].startIndex...wordArr[i].startIndex, with: first)
    }
    str = wordArr.joined(separator: " ")
    return str
}
everySecondWordUp(str: &string)


//MARK: 14*.
let arr10 = [1, 1, 2, 3, 4, 5]
//Проверьте, что в этом массиве есть два одинаковых элемента подряд.
func isTwoInARow(array: [Int]) -> Bool {
    var result = Bool()
    for ind in array.indices {
        if ind == array.lastIndex(of: array.last!) {
            result = false
            break
        }
        else if array[ind] == array[ind+1] {
            result = true
            break
        }
    }
    return result
}
isTwoInARow(array: arr10)


//MARK: 15*.
var arr11 = [
  [2, 1, 4, 3, 5],
  [3, 5, 2, 4, 1],
  [4, 3, 1, 5, 2],
]
//Отсортируйте элементы в каждом подмассиве.
func sortSubArray(arr: inout [[Int]]) -> [[Int]] {
    var tempArr = [[Int]]()
    for i in arr {
        tempArr.append(i.sorted())
    }
    arr = tempArr
    return arr
}
sortSubArray(arr: &arr11)


//MARK: 16*.
let arr12 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
]
//Найдите сумму элементов этого массива.
func sumOfSubArrays(_ arr: [[Int]]) -> Int {
    var sum = 0
    for subArr in arr12 {
        for int in subArr {
                    sum += int
        }
    }
    return sum
}
sumOfSubArrays(arr12)

//MARK: 17*.
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
func sumOfSubSubArrays(_ arr: [[[Int]]]) -> Int {
    var sum = 0
    for level2 in arr {
        for level3 in level2 {
            for int in level3 {
                sum += int
            }
        }
    }
    return sum
}
sumOfSubSubArrays(arr13)


//MARK: 18.
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
func sumOfDictValues(dict: [String: [Int]]) -> Int {
    var sum = 0
    var arrContainer = [Int]()
    for arr in dict.values {
        for int in arr {
            sum += int
        }
    }
    return sum
}
sumOfDictValues(dict: dictionary)
 

//MARK: 19.
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
func sumOfDictValues2(dict: [String: Any]) -> Int {
    var tempArr = [Int]()
    var sum = 0
    for value in dict.values {
        if let array = value as? [Int] {
            tempArr.append(contentsOf: array)
        } else if let dictionary = value as? [Int: Int] {
            tempArr.append(contentsOf: dictionary.values)
        } else {
            print("Something went wrong")
        }
    }
    for i in tempArr {
        sum += i
    }
    return sum
}
sumOfDictValues2(dict: dictionary2)


//MARK: 20.
//Сформируйте с помощью циклов следующий массив:
//[
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//  [1, 2, 3],
//]
func makeWeirdArr() -> [[Int]] {
    var arr = [[Int]]()
    var arrContainer = [Int]()
    
    for i in 1...3 {
        arrContainer.append(i)
    }
    for _ in 1...5 {
        arr.append(arrContainer)
    }
    return arr
}
makeWeirdArr()


//MARK: 21.
let arr17 = [
   [1, 2, 3],
   [4, 5, 6],
   [7, 8, 9]
]
//Слейте элементы этого массива в один одномерный массив:
//[1, 2, 3, 4, 5, 6, 7, 8, 9]
func arrArrat(arr: [[Int]]) -> [Int] {
    var singleLevelArr = [Int]()
    for i in arr {
        for j in i {
            singleLevelArr.append(j)
        }
    }
    return singleLevelArr
}
arrArrat(arr: arr17)


//MARK: 22.
let arr16 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
// Сделай словарь, который будет под ключами min, max, avarage хранить соответствующие значения из массива
func minAvMax(arr: [Int]) -> [String: Int] {
    guard let min = arr.min(), let max = arr.max() else { return ["error": 405] }
    let avarage = (min + max) / 2
    
    let dictionary: [String: Int] =
    ["min": min,
     "avarage": avarage,
     "max": max]
    
    return dictionary
}
minAvMax(arr: arr16)


//MARK: 23.
let dictionary3 = [
   "min" : -100,
   "max" : 42
]
//Собери массив от минимального значения до максимального с шагом 2, используя значения из словаря
func minMax(forDictionary dict: [String: Int], by step: Int) -> [Int] {
    guard let min = dict["min"], let max = dict["max"] else { return [] }
    var arr = [Int]()
    for i in stride(from: min, through: max, by: step) {
        arr.append(i)
    }
    return arr
}
minMax(forDictionary: dictionary3, by: 2)

//MARK: - 1.
//Сделайте функцию, которая параметром будет принимать массив
// и удалять из него все дубли, которые встречаются больше трёх раз.
func fuckTheDuplicatesIf(for array: inout [Int], limiter: Int) {
    var counter = [Int: Int]()
    for i in array {
        counter[i, default: 0] += 1
    }
    array = array.filter { counter[$0, default: 0] <= limiter }
}

var aLotOfClones = [1, 1, 1, 2, 3, 4, 4, 4, 5, 5, 6, 7, 8, 8, 8, 8, 8, 9, 10]
fuckTheDuplicatesIf(for: &aLotOfClones, limiter: 3)




//MARK: 2.
//Сделайте функцию, которая параметром будет принимать массив
// и удалять из него одинаковые, рядом стоящие элементы.
func not2NumTogether(array: [Int]) -> [Int] {
    var arrReturn: [Int] = []
    for i in 1..<array.count {
        if array[i] != array[i-1] {
            arrReturn.append(array[i-1])
        }
    }
    arrReturn.append(array[array.count - 1])
    return arrReturn
}
var doplicatesInt = [1, 1, 2, 3, 3, 3, 4, 5, 5]
not2NumTogether(array: doplicatesInt)

//MARK: - Домашка Closures

// MARK: 1*.
//Дан массив:
 let someNum = [
   [1, 2, 3],
   [4, 5, 6],
   [7, 8, 9],
 ]
// Напиши функцию, которая принимает параметры — массив и функцию, которая совершает операцию над заданным массивом и возвращает Int.
// Через разные замыкания посчитай сумму элементов, произведение, разность.

func operations(for array: [[Int]], math: ([Int]) -> Int) -> Int {
    var flatArray = [Int]()
    for i in someNum {
        flatArray.append(contentsOf: i)
    }
   return math(flatArray)
}
 
let totalSum = operations(for: someNum) {
    var sum = 0
    for i in $0 {
        sum += i
    }
    return sum // returns 45
}

let multiplication = operations(for: someNum) {
    var result = 1
    for i in $0 {
        result *= i
    }
    return result //returns 362 880
}


// MARK: 2.
//Дан массив
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
// Напиши функцию, которая принимает параметры — массив и функцию, которая совершает операцию над заданным массивом и возвращает Int.
// Через разные замыкания посчитай среднее, минимальное и максимальное значение.
func someMath(for array: [Int], closure: ([Int]) -> Int) -> Int {
    closure(array)
}

let averageValue = someMath(for: arr, closure: { (num: [Int]) -> Int in // Полный синтаксис
    let amount = num.count
    var sum = 0
    for i in num {
         sum += i
    }
    var result = sum / amount
    return result  // returns 5
})

let minValue = someMath(for: arr) { num in // short sintax + trailing closure
    guard let minNum = num.min() else { return 0 }
    return minNum // returns 1
}

let maxValue = someMath(for: arr) { // super short sintax + forced unwrapping
    $0.max()! // returns 9
}








