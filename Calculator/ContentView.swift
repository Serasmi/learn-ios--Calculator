//
//  ContentView.swift
//  Calculator
//
//  Created by Сергей Смирнов on 15.08.2020.
//  Copyright © 2020 Sergey Smirnov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let spacing: CGFloat = 12

    let buttons: [[CalcButton]] = [
        [.clear, .plusMinus, .percent, .div],
        [.seven, .eight, .nine, .mult],
        [.four, .five, .six, .sub],
        [.one, .two, .three, .sum],
        [.zero, .decimal, .equals]
    ]

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: spacing) {
                HStack {
                    Spacer()

                    Text("0")
                        .font(.system(size: 64))
                        .foregroundColor(Color(.white))
                }
                .padding(.horizontal, spacing)

                ForEach(self.buttons, id: \.self) { row in
                    HStack(spacing: self.spacing) {
                        ForEach(row, id: \.self) { button in
                            CalcButtonView(button: button, spacing: self.spacing) {
                                print("Tapped")
                            }
                        }
                    }
                }
            }
            .padding(.bottom, spacing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
