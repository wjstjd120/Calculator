//
//  Calculator.swift
//  Calculator
//
//  Created by 전성진 on 6/5/24.
//
import Foundation

class Calculator {
    var oper: String
    
    init(_ oper: String) {
        self.oper = oper
    }
    
    func calculate(_ firstNum: Double, _ secondeNum: Double) -> Double {
        switch oper {
        case "+":
            return AddOperation().operation(firstNum, secondeNum)
        case "-":
            return SubtractOperation().operation(firstNum, secondeNum)
        case "*":
            return MultiplyOperation().operation(firstNum, secondeNum)
        case "/":
            return DivideOperation().operation(firstNum, secondeNum)
        case "%":
            return Double(DivideOperation().operation(Int(firstNum), Int(secondeNum)))
        default:
            return 0
        }
    }
}

extension Calculator { //readLine, 예외처리 관련
    static let operArr: [String] = ["+", "-", "/", "*", "%"]
    
    static func doubleTypeCheck(_ msg: String) -> Double {
        print(msg)
        if let str = readLine(), let num = Double(str) {
            return Double(num)
        } else {
            return doubleTypeCheck("숫자만 입력해 주세요.")
        }
    }

    static func stringTypeCheck(_ msg: String) -> String {
        print(msg)
        if let str = readLine(), Calculator.operArr.contains(str) {
            return str
        } else {
            return stringTypeCheck("지정된 문자만 입력해 주세요. (+, -, /, *, %)")
        }
    }
}


class AbstractOperation {
    func operation(_ a: Double, _ b: Double) -> Double {
        return 0
    }
}

class AddOperation: AbstractOperation {
    // 함수 override
    override func operation(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubtractOperation: AbstractOperation {
    // 함수 override
    override func operation(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation: AbstractOperation {
    // 함수 override
    override func operation(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation: AbstractOperation {
    // 함수 override
    override func operation(_ a: Double, _ b: Double) -> Double {
        return a / b
    }
    
    func operation(_ a: Int, _ b: Int) -> Int {
        return a % b
    }
}
