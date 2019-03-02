//
//  EndViewController.swift
//  QuizUpGame
//
//  Created by Фатима Балтабаева on 2/28/19.
//  Copyright © 2019 Фатима Балтабаева. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var labelF: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var labelScore: UILabel!
    
    
    @IBAction func restartButton(_ sender: Any) {
        
    }
    var correctScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(correctScore <= 2){
            labelF.text = "Ooooh, you looser: "
            labelScore.text = String(correctScore)
        }else if(correctScore == 3){
            labelF.text = "Not so bad: "
            labelScore.text = String(correctScore)
        }else{
            labelF.text = "Veni. Vidi. Vici: "
            labelScore.text = String(correctScore)
        }
        
    
        

        // Do any additional setup after loading the view.
        }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
