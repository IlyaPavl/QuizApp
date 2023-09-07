//
//  ContentView.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 04.09.2023.
//

import SwiftUI

struct QuizView: View {
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            BackgroundView.background.resizable(resizingMode: .tile).ignoresSafeArea()
            VStack {
                Text("Quizzz Time 🧠")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                Spacer()
                Text(viewModel.questionText)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 370)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                Text(viewModel.progressQuestionText)
                    .font(.caption)
                    .foregroundColor(.white)
                Spacer()
                VStack {
                    ForEach(viewModel.answerIndices, id: \.self) { index in
                        AnswerButtons(text: viewModel.answerText(at: index)) {
                            viewModel.makeGuessForCurrentQuestion(at: index)
                        }
                        .background(viewModel.colorForButton(at: index))
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .padding(.vertical, 9)
                        .disabled(viewModel.answerWasChosen)
                    }
                }
                Spacer()
                BottomButton(buttonName: "Next", changeColor: viewModel.answerWasChosen) {
                    viewModel.advancedGameState()
                }
                .disabled(!viewModel.answerWasChosen)
            }
            .padding(.bottom)
        }
        .navigationBarBackButtonHidden(true)
        .background(resultNavLink)
    }
    
    private var resultNavLink: some View {
        NavigationLink(destination: ResultView(result: ResultsViewModel(selectionCount: viewModel.guessCount, gameStartTime: viewModel.gameStartTime, gameEndTime: Date())), isActive: .constant(viewModel.gameIsOver), label: { EmptyView()})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            QuizView()
        }
    }
}
