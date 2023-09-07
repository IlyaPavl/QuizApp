//
//  Game.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 05.09.2023.
//

import Foundation

struct Game {
    var startTime = Date()
    private let questions = Question.allQuestions.shuffled()
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    var gameIsOver = false
    
    var questionsCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, selectedIndex) in guesses {
            if selectedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
    mutating func advancedGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            gameIsOver = true
            print("is over")
        } else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    
    mutating func makeGuess(at index: Int) {
        guesses[currentQuestion] = index
    }
}
