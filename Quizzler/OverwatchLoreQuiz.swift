//
//  OverwatchLoreQuiz.swift
//  Quizzler
//
//  Created by Jehiel Pather on 13/5/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class OverwatchLoreQuiz{
    
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
         
         //Make Sure That the Question Number = The Amount of Questions or Else the App Will Crash
         
         */
        list.append(Question(text: "Who was the first leader of Overwatch?", correctAnswer: 1, option1: "Reaper", option2: "Soilder 76", option3: "Winston"))
        
        list.append(Question(text: "Who was Genji’s trainer?", correctAnswer: 3, option1: "Hanzo", option2: "Himself", option3: "Zenyatta"))
        
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
