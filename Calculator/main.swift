//
//  main.swift
//  Calculator
//
//  Created by 전성진 on 6/4/24.
//
while true {
    let calculator = Calculator(Calculator.stringReadLine("-계산식 입력-"))

    print("결과 : \(calculator.calculate(Calculator.doubleReadLine("-첫번째 숫자입력-"), Calculator.doubleReadLine("-두번째 숫자입력-")))")
}

