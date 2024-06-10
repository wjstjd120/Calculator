//
//  main.swift
//  Calculator
//
//  Created by 전성진 on 6/4/24.
//
while true {
    let oppArr: [String : AbstractOperation] = [
        "+" : AddOperation()
        , "-" : SubtractOperation()
        , "*" : MultiplyOperation()
        , "/" : DivideOperation()
        , "%" : ModOperation()
    ]
    
    let calculator = Calculator(oppArr)

    print("결과 : \(calculator.calculate(Calculator.stringReadLine("-계산식 입력-")).operation(Calculator.doubleReadLine("-첫번째 숫자입력-"), Calculator.doubleReadLine("-두번째 숫자입력-")))")
}
