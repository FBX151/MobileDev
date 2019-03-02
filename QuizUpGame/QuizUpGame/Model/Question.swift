//
//  Question.swift
//  QuizUpGame
//
//  Created by Фатима Балтабаева on 2/28/19.
//  Copyright © 2019 Фатима Балтабаева. All rights reserved.
//

import Foundation


class Question{
    var text: String = " "
    var image: String = " "
    var variantA: String = " "
    var variantB: String = " "
    var variantC: String = " "
    var variantD: String = " "
    var answer: String = " "
    // var image: String = " "
    
    init(text: String, image: String, variantA: String, variantB: String, variantC: String, variantD: String,answer: String ){
        self.variantA = variantA
        self.variantB = variantB
        self.variantC = variantC
        self.variantD = variantD
        self.answer = answer
        self.text = text
        self.image = image
        // self.image = image
    }
    
}
