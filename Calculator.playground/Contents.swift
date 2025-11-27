import Foundation

//MARK: - STEP 1: parsing
//Only parsing:
var parser = Parsing()
let expression = "7 + 8 * 2 / (4 - 8 * 2) - 213"
let parsedExpression = parser.toParse(expression)
//["7", "+", "8", "*", "2", "/", "(", "4", "-", "8", "*", "2", ")", "-", "213"]

//MARK: - STEP 2: Sort station algorythm
let sortStation = SortStation()

let backPolish = sortStation.makeBackPolish(from: parsedExpression)
//["7", "8", "2", "*", "4", "8", "2", "*", "-", "/", "+", "213", "-"]

//MARK: - STEP 3: computing the result
let computer = Computer()

computer.mathIt(backPolish)
//-207,3333333333333

//MARK: - Realization the Calculator protocol
protocol Calculator {
    func calculate() -> Double
}

extension String: Calculator {
    //    Whith validation
    func calculate(_ validator: ([String]) throws -> [String]) rethrows -> Double {
        var parser = Parsing()
        let sortStation = SortStation()
        let computer = Computer()
        
        var temp = parser.toParse(self)
        try validator(temp)
        temp = sortStation.makeBackPolish(from: temp)
        return computer.mathIt(temp)
    }
    //    Whithout validation
    func calculate() -> Double {
        calculate { $0 } // an epmpy closure
    }
}

// Overloaded method demonstration:
try expression.calculate(validator) // -207,3333333333333
expression.calculate() // -207,3333333333333

//Error demonstration:
do {
    let errorDemo = try "* 7 + 8 * 2 / (4 - 8 * 2) - 213".calculate(validator)
} catch {
    print(error) // operatorError(reason: "The operators can\'t be the first (exept \"-\") or last symbol of a collection")
}

do {
    let errorDemo = try ")7 + 8 * 2 / (4 - 8 * 2) - 21))))".calculate(validator)
} catch {
    print(error) // parenthesisError(reason: "The quantity of \"(\" and \")\" must be equal")
}

do {
    let errorDemo = try "".calculate(validator)
} catch {
    print(error) // emptyExpression(reason: "Expression can\'t be empty")
}












