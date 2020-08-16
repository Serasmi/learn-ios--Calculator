//
//  CalcButton.swift
//  Calculator
//
//  Created by Сергей Смирнов on 16.08.2020.
//  Copyright © 2020 Sergey Smirnov. All rights reserved.
//

import SwiftUI

enum CalcButton {
    // numbers
    case zero, one, two, three, four
    case five, six, seven, eight, nine
    // arithmetic operations
    case div, mult, sub, sum, equals
    // other buttons
    case clear, plusMinus, percent, decimal

    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .div: return "÷"
        case .mult: return "×"
        case .sub: return "-"
        case .sum: return "+"
        case .equals: return "="
        case .plusMinus: return "±"
        case .percent: return "%"
        case .decimal: return ","
        default: return "AC"
        }
    }

    var color: Color {
        switch self {
        case .clear, .percent, .plusMinus: return Color(.lightGray)
        case .div, .equals, .mult, .sub, .sum: return Color(.orange)
        default: return Color(.darkGray)
        }
    }
}
