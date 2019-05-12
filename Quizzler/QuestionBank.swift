//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Jehiel Pather on 4/5/19.
//  Copyright © 2019 Nalini Pather. All rights reserved.
//
 //This is The Overwatch General Knowledge
import Foundation

class QuestionBank{
    
    var list = [Question]()
    let numberOfQuestions = 14
    
    init()
    {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "What was the original name of Overwatch", correctAnswer: 2, option1: "Gods", option2: "Titan", option3: "Pikachu")
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        
        /*
         How This Works:
         
         list.append() adds it as a question to a bank
         Inside Question there are 3 properties to change
         text: Put the question text in ""
         correctAnswer: This must = the correct option(option1,option2,option3)
         option1,2,3: These are what the 3 buttons will show option one is the top one
         
         
         */
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio"))
        
    }
    
    
}
