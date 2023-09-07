//
//  ResultsViewModel.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 06.09.2023.
//

import Foundation

struct ResultsViewModel {
    let selectionCount: (correct: Int, incorrect: Int)
    
    var finalPercentText: String {
        "\(score) %"
    }
    
    var letterGradeText: String {
        switch score {
        case 90...100: return "Great"
        case 75..<90: return "Good"
        case 65..<75: return "Ok"
        case 50..<65: return "Bad"
        case 0..<50: return "Worst"
        default: return "?"
        }
    }
    
    
    var correctSelectionText: String {
        ("✅ : \(selectionCount.correct)")
    }
    var incorrectSelectionText: String {
        "❌ : \(selectionCount.incorrect)"
    }
    
    private var score: Int {
        selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)
    }
    
    var gameStartTime: Date
    var gameEndTime: Date
    
    var totalGameTime: String {
        "\(Int(gameEndTime.timeIntervalSince(gameStartTime))) seconds"
    }
}
