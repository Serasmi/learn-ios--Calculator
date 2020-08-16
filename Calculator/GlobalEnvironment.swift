//
//  GlobalEnvironment.swift
//  Calculator
//
//  Created by Сергей Смирнов on 16.08.2020.
//  Copyright © 2020 Sergey Smirnov. All rights reserved.
//

import SwiftUI

class GlobalEnvironment: ObservableObject {
    @Published var display = "0"
    
    private final let initValue = "0"

    func tapButton(button: CalcButton) {
        switch button {
        case .clear:
            display = self.initValue
        default:
            if display == self.initValue {
                display = button.title
            } else {
                display += button.title
            }
        }
    }
}
