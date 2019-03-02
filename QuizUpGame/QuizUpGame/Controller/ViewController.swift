//
//  ViewController.swift
//  QuizUpGame
//
//  Created by Фатима Балтабаева on 2/28/19.
//  Copyright © 2019 Фатима Балтабаева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    
    @IBOutlet weak var scoreCorrect: UILabel!
    @IBOutlet weak var scoreWrong: UILabel!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var manager = QuizManager()
    var correctAnswersInScore: Int = 0
    var incorrectAnswersInScore: Int = 0
    var choosenAnswer: String = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scoreCorrect.text = "0/5"
        scoreWrong.text = "0/5"
        
         showQuestions()
      
    }

   
    
    
    @IBAction func aButton(_ sender: Any) {
        choosenAnswer = manager.getCurrentQuestion().variantA
        
        print("Print A")
        if(isItCorrect()) {
            aButton.backgroundColor = UIColor.green
        }
        else {
            aButton.backgroundColor = UIColor.red
        }
        manager.currentIndex+=1
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.showQuestions()
            self.changeButtonColor()
        }
        
        
    }
    
    @IBAction func bButton(_ sender: Any) {
        choosenAnswer = manager.getCurrentQuestion().variantB
        
        if(isItCorrect()) {
            bButton.backgroundColor = UIColor.green
        }
        else {
            bButton.backgroundColor = UIColor.red
        }
        manager.currentIndex+=1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.showQuestions()
            self.changeButtonColor()
        }
        
    }
    
    @IBAction func cButton(_ sender: Any) {
        choosenAnswer = manager.getCurrentQuestion().variantC
        
        if(isItCorrect()) {
            cButton.backgroundColor = UIColor.green
        }
        else {
            cButton.backgroundColor = UIColor.red
        }
        manager.currentIndex+=1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.showQuestions()
            self.changeButtonColor()
        }
        
    }
    
    @IBAction func dButton(_ sender: Any) {
        choosenAnswer = manager.getCurrentQuestion().variantD
        
        if(isItCorrect()) {
            dButton.backgroundColor = UIColor.green
        }
        else {
            dButton.backgroundColor = UIColor.red
        }
        manager.currentIndex+=1
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.showQuestions()
            self.changeButtonColor()
        }
        
    }
    func changeButtonColor() {
        aButton.backgroundColor = UIColor.white
        bButton.backgroundColor = UIColor.white
        cButton.backgroundColor = UIColor.white
        dButton.backgroundColor = UIColor.white
    }
    
    func showQuestions(){
        
        if(manager.currentIndex <= 4){
            label.text = manager.getCurrentQuestion().text
            aButton.setTitle(manager.getCurrentQuestion().variantA, for: .normal)
            bButton.setTitle(manager.getCurrentQuestion().variantB, for: .normal)
            cButton.setTitle(manager.getCurrentQuestion().variantC, for: .normal)
            dButton.setTitle(manager.getCurrentQuestion().variantD, for: .normal)
            image.image = UIImage(named: manager.getCurrentQuestion().image)
            
            
            // newQuestion()  // updateUi
        }else{
            manager.currentIndex = 0
            performSegue(withIdentifier: "end", sender: self)
            
            
            print(correctAnswersInScore)
            print(incorrectAnswersInScore)
            print("Bitti oyin")
            
        }
        
        
    }
    
    
    
    func isItCorrect()  -> Bool{
         if(manager.currentIndex <= 4){
            
        if(choosenAnswer == manager.getCurrentQuestion().answer){
            
            correctAnswersInScore += 1
            
            scoreCorrect.text = String(correctAnswersInScore) + "/" + "5"
            
            print("DAA")
            print("выбрала",choosenAnswer)
            print(manager.getCurrentQuestion().answer)
            return true
            
        }else if(choosenAnswer != manager.getCurrentQuestion().answer){
            incorrectAnswersInScore += 1
            scoreWrong.text = String(incorrectAnswersInScore) + "/" + "5"
            
            print("NEET")
            
            print("выбрала",choosenAnswer)
            print(manager.getCurrentQuestion().answer)
            return false
            
        }
         }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var viewControllerPage = segue.destination as! EndViewController
        viewControllerPage.correctScore = correctAnswersInScore
        
    }
    
    

    
   
    

}

