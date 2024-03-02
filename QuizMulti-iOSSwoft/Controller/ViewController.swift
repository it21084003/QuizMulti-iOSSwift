//
//  ViewController.swift
//  QuizMulti-iOSSwoft
//
//  Created by Antt Min on 2/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        var queState = quizBrain.getQuestionState()
        print(queState)
        if queState {
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
        
        Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = "\(quizBrain.questionNumber+1) .  \(quizBrain.getQuestionTitle())"
        choice1.setTitle(quizBrain.getChoice1(), for: .normal)
        choice2.setTitle(quizBrain.getChoice2(), for: .normal)
        choice3.setTitle(quizBrain.getChoice3(), for: .normal)
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore()) / \(quizBrain.quiz.count)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.getScore = quizBrain.getScore()
            destinationVC.scoreTotal = quizBrain.quiz.count
            
        }
    }
    
    
}

