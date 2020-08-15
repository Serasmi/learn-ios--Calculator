//
//  ContentView.swift
//  Calculator
//
//  Created by Сергей Смирнов on 15.08.2020.
//  Copyright © 2020 Sergey Smirnov. All rights reserved.
//

import SwiftUI

enum Button {
    // numbers
    case zero, one, two, three, four
    case five, six, seven, eight, nine
    // arithmetic operations
    case div, mult, sub, sum, equals
    // other buttons
    case clear, plusMinus, percent, decimal
}

struct ContentView: View {
    let buttons: [[Button]] = [
        [.clear, .plusMinus, .percent, .div],
        [.seven, .eight, .nine, .mult],
        [.four, .five, .six, .sub],
        [.one, .two, .three, .sum],
        [.zero, .decimal, .equals]
    ]

    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
