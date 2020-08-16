//
//  CalcButtonView.swift
//  Calculator
//
//  Created by Сергей Смирнов on 16.08.2020.
//  Copyright © 2020 Sergey Smirnov. All rights reserved.
//

import SwiftUI

struct CalcButtonView: View {
    let button: CalcButton
    let spacing: CGFloat
    let action: () -> Void

    var height: CGFloat {
        (UIScreen.main.bounds.width - 5 * spacing) / 4
    }

    var width: CGFloat {
        self.button.title == "0" ? self.height * 2 + spacing : self.height
    }

    var body: some View {
        Button(action: action) {
            Text(button.title)
                .font(.system(size: height / 3))
                .foregroundColor(Color(.white))
                .frame(width: width, height: height)
                .background(button.color)
                .cornerRadius(height / 2)
        }
    }
}

struct CalcButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CalcButtonView(button: CalcButton.zero, spacing: 12) {
                print("Tapped")
            }
            CalcButtonView(button: CalcButton.clear, spacing: 12) {
                print("Tapped")
            }
            CalcButtonView(button: CalcButton.equals, spacing: 12) {
                print("Tapped")
            }
        }
    }
}
