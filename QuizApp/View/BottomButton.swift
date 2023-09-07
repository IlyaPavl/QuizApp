//
//  BottomButton.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import SwiftUI

struct BottomButton: View {
    let buttonName: String
    let changeColor: Bool
    let onClick: () -> Void
    var body: some View {
        Button(action: onClick, 
               label: {
            Text(buttonName)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(minWidth: 200)
                .frame(minHeight: 40)
                .foregroundColor(.white)
                .background(changeColor ? Color.blue : Color.gray)
                .cornerRadius(10)
        })
    }
}

struct BottomButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomButton(buttonName: "Test button text", changeColor: false) { }
    }
}
