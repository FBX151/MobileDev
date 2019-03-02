//
//  QuestionGenerator.swift
//  QuizUpGame
//
//  Created by Фатима Балтабаева on 2/28/19.
//  Copyright © 2019 Фатима Балтабаева. All rights reserved.
//

import Foundation

class QuestionGenerator{
    
    static func getQuizQuestion() -> [Question]{
        var questions = [Question]()
        
        questions.append(Question.init(text:"Кто нанес шрам на левый глаз Зуко?",image: "zuko", variantA: "Лорд Огня Озай", variantB: "Адмирал Джао", variantC: "Азула", variantD: "Аанг", answer: "Лорд Огня Озай"))
        
        questions.append(Question.init(text:"Как звали пингвина в свитре?", image: "lovelas", variantA: "Мамбл", variantB: "Ловелас", variantC: "Рауль", variantD: "Эрик", answer: "Ловелас"))
        
        questions.append(Question.init(text:"Угадайте мульт", image: "monstry", variantA: "монстры против пришельцев", variantB: "корпорация монстров", variantC: "Арита", variantD: "Монстры против зомби", answer: "монстры против пришельцев"))
        
        questions.append(Question.init(text:"Какое прозвище имеет Айро?", image: "airo", variantA: "У него нет прозвища", variantB: "Западный Дракон", variantC: "Ледяное дыхание", variantD: "Лорд Огня ", answer: "Западный Дракон"))
        
        questions.append(Question.init(text:"Укажите породу собаки", image: "mops", variantA: "овчарка", variantB: "шпиц", variantC: "Чихуахуа", variantD: "мопс", answer: "мопс"))
        
        return questions
        
    }
}
