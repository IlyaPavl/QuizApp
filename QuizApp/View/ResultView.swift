//
//  ResultView.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 06.09.2023.
//

import SwiftUI

struct ResultView: View {
    let result: ResultsViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView.background.resizable(resizingMode: .tile).ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        Text("Final Score: ")
                        Text(result.finalPercentText)
                    }
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                    .fontDesign(.rounded)
                    VStack {
                        Text ("Letter grade: \(result.letterGradeText)")
                            .padding()
                        Text (result.correctSelectionText)
                            .padding()
                        Text (result.incorrectSelectionText)
                            .padding()
                        Text("You finished in \(result.totalGameTime)")
                    }
                    .font(.title)
                    .padding(.bottom)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    Spacer()
                    NavigationLink("Start again") {
                        WelcomeView()
                    }
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .frame(minWidth: 200)
                    .frame(minHeight: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.bottom)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(result: ResultsViewModel(selectionCount: (5,0), gameStartTime: Date(), gameEndTime: Date()))
    }
}
