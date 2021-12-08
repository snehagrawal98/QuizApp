//
//  Questions.swift
//  QuizApp
//
//  Created by mnameit on 09/12/21.
//

import Foundation


struct Question{
    let question:String
    let answers:[String]
    let correctAnswer:Int
}

var questions:[Question] = [
Question(question: "What is the capital of India?", answers: ["Delhi","Bombay","Chandigarh","Noida"], correctAnswer: 0),
    Question(question: "What is the national bird of India?", answers: ["Parrot","Peacock","Owl","Pigeon"], correctAnswer: 1),
    Question(question: "Where is Taj Mahal located?", answers: ["Agra","Bombay","Chandigarh","Chennai"], correctAnswer: 0),
    Question(question: "What is the capital of Punjab?", answers: ["Delhi","Bombay","Chandigarh","Noida"], correctAnswer: 2),
    Question(question: "What is 4/2?", answers: ["5","3","1","0"], correctAnswer: 2),
]
