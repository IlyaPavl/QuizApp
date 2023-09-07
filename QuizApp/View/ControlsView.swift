//
//  ControlsView.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import SwiftUI

struct ControlsView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable(resizingMode: .tile)
                .ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
