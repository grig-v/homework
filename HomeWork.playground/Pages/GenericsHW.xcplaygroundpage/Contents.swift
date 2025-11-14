import Foundation

//HW: Реализовать функции высшего порядка: map, filter, reduce

// Here we have some collections for practice
let intArray = [1, 2, 3, 4, 5, -6, -1]
let strArray = ["a", "b", "cdefg", "HATE avocados"]
let strArray2 = ["1", "2", "three", "4"]
let strSet: Set = ["a", "b", "cdefg", "HATE avocados"]
let emptyArray: [String] = []

// Error enum for error handing
enum MyError: Error {
    case error(String)
}

//MARK: - The myMap(_:) method
extension Sequence {
    func myMap<T, E>(_ transform: (Self.Element) throws(E) -> T) throws(E) -> [T] where E : Error {
        var result: [T] = []
        for i in self {
            try result.append(transform(i))
        }
        return result
    }
}

// A few tests of myMap(_:)
let testArr1 = intArray.myMap { (element: Int) in return element * 2 }
let testArr2 = strArray.myMap { $0.uppercased() }
let testSet3 = strSet.myMap { $0 + "_33" }

//Error handing demonstration
do {
    let testArr4 = try strArray2.myMap { (i: String) throws(MyError) -> Int in
        guard let num = Int(i) else { throw .error("Something went wrong...") }
        return num }
} catch .error(let err) {
    print(err)
}

//MARK: - The myFilter(_:) method
extension Sequence {
    func myFilter(_ isIncluded: (Self.Element) throws -> Bool) rethrows -> [Self.Element] {
        var result: [Self.Element] = []
        for element in self {
            if try isIncluded(element) {
                result.append(element)
            }
        }
        return result
    }
}

// A few tests of myFilter(_:) method
let test5 = intArray.myFilter { $0 % 2 != 0 }
let test6 = strArray.myFilter { $0.contains("c") }
let test7 = strArray2.myFilter { $0.count <= 1 }
let test11 = emptyArray.myFilter { $0.contains("a") }

//Error handing demonstration
func onlyPositive(_ number: Int) throws(MyError) -> Bool {
        if number < 0 { throw.error("There is a negatine number!") }
        else { return true }
}
do {
    let test12 = try intArray.myFilter(onlyPositive)
} catch  {
    print(error)
}

//MARK: - The myReduce(_:_:) method
extension Sequence {
    func myReduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, Self.Element) throws -> Result) rethrows -> Result {
            var container: Result = initialResult
        for i in self {
            container = try nextPartialResult(container, i)
        }
        return container
    }
}

// A few tests of myReduce(_:_:) method
let test9 = intArray.myReduce(0, { x, y in x + y })
let test10 = strArray.myReduce("", +)





