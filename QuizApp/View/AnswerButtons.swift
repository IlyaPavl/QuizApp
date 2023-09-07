//
//  AnswerButtons.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import SwiftUI

struct AnswerButtons: View {
    let text: String
    let onClick: () -> Void
    
    var body: some View {
        Button {
            onClick()
        } label: {
            Text(text)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(minWidth: 150)
                .frame(minHeight: 40)
                .foregroundColor(.black)
        }
    }
}

struct AnswerButtons_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButtons(text: "Answer") {}
    }
}
