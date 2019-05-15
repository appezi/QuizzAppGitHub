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
    let numberOfQuestions = 20
    
    init()
    {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "What was the original name of Overwatch", correctAnswer: 2, option1: "Gods", option2: "Titan", option3: "Pikachu", gifName: "Test")
        
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
        list.append(Question(text: "What two heroes have a long history with each other", correctAnswer: 1, option1: "Genji & Hanzo", option2: "Genji & Mai", option3: "Tracer & Lucio", gifName: "Test"))
        
        list.append(Question(text: "What Hero was a former professional gamer?", correctAnswer: 3, option1: "Genji", option2: "Lucio", option3: "D.Va", gifName: "Test2"))
        
        list.append(Question(text: "Who is the oldest hero, according to Overwatch lore?", correctAnswer: 1, option1: "Reinhardt", option2: "Torbjörn", option3: "Winston", gifName: "Test2"))
        
        list.append(Question(text: "What was Bastions ultimate in beta testing?", correctAnswer: 1, option1: "Flight", option2: "Tank", option3: "Shield", gifName: "Test"))
        
        list.append(Question(text: "What game was D.Va a professional at?", correctAnswer: 3, option1: "World of Warcraft", option2: "Hearthstone", option3: "Starcraft", gifName: "Test2"))
        
        list.append(Question(text: "From scratch how long until Overwatch was playable?", correctAnswer: 2, option1: "2 months", option2: "5 months", option3: "15 Weeks", gifName: "Test"))
        
        list.append(Question(text: "What was the name of Pharah in development?", correctAnswer: 3, option1: "Guardian", option2: "Warrior", option3: "Rocket Queen", gifName: "Test2"))
        
        list.append(Question(text: "Overwatch was Blizard's first IP in how many years?", correctAnswer: 3, option1: "7 years", option2: "18 years", option3: "17 years", gifName: "Test"))
        
        list.append(Question(text: "What was the release date of Overwatch?", correctAnswer: 3, option1: "14 June 2016", option2: "15 June 2016", option3: "24 May 2016", gifName: "Test2"))
        
        list.append(Question(text: "Who is the only character who moves silently?", correctAnswer: 3, option1: "Genji", option2: "Reaper", option3: "Zenyatta", gifName: "Test2"))
        
        list.append(Question(text: "Who does Winston Quote?", correctAnswer: 1, option1: "William Shakespeare", option2: "Sun Tzu", option3: "Julius Caesar", gifName: "Test"))
        
        list.append(Question(text: "What is the name of Bastion's bird?", correctAnswer: 2, option1: "Gregory", option2: "Ganymede", option3: "Little Bastion", gifName: "Test2"))
        
        list.append(Question(text: "One of Hanzo's lines makes a parody of...", correctAnswer: 1, option1: "Pokèmon", option2: "Megaman", option3: "Sonic", gifName: "Test"))
        
        list.append(Question(text: "Bastion was voiced by...", correctAnswer: 2, option1: "Google", option2: " Chris Metzen", option3: "Alexa", gifName: "Test"))
        
        list.append(Question(text: "What hero was a double agent to overwatch?", correctAnswer: 1, option1: "Widowmaker", option2: "Reaper", option3: "Doomfist", gifName: "Test2"))
        
        list.append(Question(text: "What is tracer’s real name?", correctAnswer: 2, option1: "Jane Johnson", option2: "Lena Oxton", option3: "Brie Scarlett", gifName: "Test"))
        
        list.append(Question(text: "What hero was employed by Overwatch to find the cause of the planets changing climate?", correctAnswer: 1, option1: "Mei", option2: "Mercy", option3: "Bation", gifName: "Test2"))
        
        list.append(Question(text: "How many heroes are in Overwatch up to June 2019? ", correctAnswer: 1, option1: "21", option2: "25", option3: "20", gifName: "Test"))
        
        list.append(Question(text: "What hero is Torbjorn’s daughter?", correctAnswer: 2, option1: "Tracer", option2: "Brigitte", option3: "Widowmaker", gifName: "Test2"))
        
        list.append(Question(text: "How many people have bought Overwatch?", correctAnswer: 3, option1: "30m+", option2: "40m+", option3: "35m+", gifName: "Test"))
        
        
        
        
        
        
        
        list.shuffle()
        
    }
    

    
    
}
