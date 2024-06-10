//
//  Calculator.swift
//  Calculator
//
//  Created by 전성진 on 6/5/24.
//
import Foundation

class Calculator {
    var abstractOperation: [String : AbstractOperation]
    
    init(_ abstractOperation: [String : AbstractOperation]) {
        self.abstractOperation = abstractOperation
    }
    
    func calculate(_ opp: String) -> AbstractOperation {
        return abstractOperation[opp] ?? AddOperation()
    }
}

extension Calculator { //readLine, 예외처리 관련
    static func doubleReadLine(_ msg: String) -> Double {
        print(msg)
        if let str = readLine(), let num = Double(str) {
            return Double(num)
        } else {
            return doubleReadLine("숫자만 입력해 주세요.")
        }
    }

    static func stringReadLine(_ msg: String) -> String {
        print(msg)
        if let str = readLine(), ["+", "-", "/", "*", "%"].contains(str) {
            return str
        } else {
            return stringReadLine("지정된 문자만 입력해 주세요. (+, -, /, *, %)")
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
}

class ModOperation: AbstractOperation {
    // 함수 override
    override func operation(_ a: Double, _ b: Double) -> Double {
        return Double(Int(a) % Int(b))
    }
}
