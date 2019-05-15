//
//  Question.swift
//  Quizzler
//
//  Created by Jehiel Pather on 4/5/19.
//  Copyright © 2019 Nalini Pather. All rights reserved.
//


import Foundation

class Question {
    //SetsUpTHeQuestions
    let questionText : String
    let answer : Int
    let optionA: String
    let optionB: String
    let optionC: String

    
    init(text: String, correctAnswer : Int, option1: String, option2: String, option3: String) {
        questionText = text
        answer = correctAnswer
        optionA = option1
        optionB = option2
        optionC = option3
    }
    

    
    
}



