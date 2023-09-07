//
//  File.swift
//  QuizApp
//
//  Created by Ilya Pavlov on 04.09.2023.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "What was the first bug?",
                 possibleAnswers: ["Fly", "Moth", "Ant", "Beetle"],
                 correctAnswerIndex: 0),
        Question(questionText: "What is 1 + 1?",
                 possibleAnswers: ["1", "2", "3", "4"],
                 correctAnswerIndex: 1),
        Question(questionText: "What language do iOS Developers use for coding?",
                 possibleAnswers: ["Python", "SQL", "Java", "Swift"],
                 correctAnswerIndex: 3),
        Question(questionText: "What is the fastest animal?",
                 possibleAnswers: ["Monkey", "Leopard", "Cheetah", "Lion"],
                 correctAnswerIndex: 2),
        Question(questionText: "Who was the first man in space?",
                 possibleAnswers: ["Gagarin", "Tereshkova", "Armstrong", "Jackson"],
                 correctAnswerIndex: 0)
    ]
}
