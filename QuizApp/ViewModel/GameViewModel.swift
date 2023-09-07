//
//  GameViewModel.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    var progressQuestionText: String {
        "Question \(game.currentQuestionIndex + 1) / \(game.questionsCount)"
    }
    
    var answerWasChosen: Bool {
        game.guesses[game.currentQuestion] != nil
    }
    
    var guessCount: (Int, Int) {
        game.selectionCount
    }
    
    var gameIsOver: Bool {
        game.gameIsOver
    }
    
    var gameStartTime: Date {
        game.startTime
    }
    
    func answerText(at index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    func advancedGameState() {
        game.advancedGameState()
    }
    
    func makeGuessForCurrentQuestion(at index: Int) {
        game.makeGuess(at: index)
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let chosenIndex = game.guesses[game.currentQuestion], chosenIndex == buttonIndex else { return .clear}
        if chosenIndex == correctAnswerIndex {
            return .green
        } else {
            return .red
        }
    }
}
