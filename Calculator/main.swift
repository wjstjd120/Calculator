//
//  main.swift
//  Calculator
//
//  Created by 전성진 on 6/4/24.
//
let calculator = Calculator(Calculator.stringTypeCheck("-계산식 입력-"))

print("결과 : \(calculator.calculate(Calculator.doubleTypeCheck("-첫번째 숫자입력-"), Calculator.doubleTypeCheck("-두번째 숫자입력-")))")
