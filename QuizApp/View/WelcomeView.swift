//
//  WelcomeView.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 06.09.2023.
//

import SwiftUI

struct WelcomeView: View, Hashable {
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView.background.resizable(resizingMode: .tile).ignoresSafeArea()
                VStack {
                    Text("Quizzz Time 🧠")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Spacer()
                    Text("Hello, player 👋")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .fontDesign(.rounded)
                    Divider()
                        .frame(height: 2)
                        .overlay(.foreground)
                        .frame(width: 150)
                        .padding(.bottom, 50)
                    
                    VStack(alignment: .leading) {
                        Text("The rules of the quiz:")
                            .font(.title)
                            .padding(.bottom)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .fontDesign(.rounded)
                        Text("1. Read the question")
                            .padding(.bottom)
                        Text("2. Choose an answer")
                            .padding(.bottom)
                        Text("3. Hit the next button")
                            .padding(.bottom)
                        
                    }
                    .frame(maxWidth: 370)
                    .font(.system(size: 25, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                    Spacer()
                    NavigationLink("Let's start quiz") {
                        QuizView()
                    }
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(minWidth: 200)
                    .frame(minHeight: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.bottom)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
