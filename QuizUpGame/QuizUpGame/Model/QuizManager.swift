//
//  QuizManager.swift
//  QuizUpGame
//
//  Created by Фатима Балтабаева on 2/28/19.
//  Copyright © 2019 Фатима Балтабаева. All rights reserved.
//

import Foundation

class QuizManager{
    var questions  = QuestionGenerator.getQuizQuestion()
    var currentIndex = 0
    var score = 0
    
    func getCurrentQuestion() -> Question{
        return questions[currentIndex]
    }
    
}
