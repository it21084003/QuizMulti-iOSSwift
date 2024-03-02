//
//  QuizBrain.swift
//  QuizMulti-iOSSwoft
//
//  Created by Antt Min on 2/28/24.
//

import Foundation

struct QuizBrain{
    
    var questionNumber = 0
    var score = 0
    var tempScore = 0
    
    let quiz = [
        
        Question(q: "運動がてら（　　　）。", a: ["犬の散歩に出かけた", "運動場まで行っていた", "毎日3キロ走っている"], correctAnswer: "毎日3キロ走っている"),
        Question(q: "（　　　）かたがた近いうちに恩師を訪ねようと思っている。", a: ["就職の情報", "訪問", "食事"], correctAnswer: "訪問"),
        Question(q: "（　　　）かたがた、お宅に伺います。", a: ["ごあいさつ", "休日", "おじゃま"], correctAnswer: "ごあいさつ"),
        Question(q: "母は（　　　）かたわら翻訳の仕事もしている。", a: ["数学を教える", "夕飯を作る", "音楽を聴く"], correctAnswer: "数学を教える"),
        Question(q: "（　　　）神社にお参りしてきた", a: ["花見がてら", "花見かたがた", "花見のかたわら"], correctAnswer: "花見かたがた"),
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    func getQuestionTitle() -> String {
        return quiz[questionNumber].text
    }
    
    func getChoice1() -> String {
        return quiz[questionNumber].answer[0]
    }
    
    func getChoice2() -> String {
        return quiz[questionNumber].answer[1]
    }
    
    func getChoice3() -> String {
        return quiz[questionNumber].answer[2]
    }
    
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].correctans {
            score += 1
            tempScore = score
            return true
        }else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber+1 < quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getQuestionState() -> Bool {
        if questionNumber == 0 {
            return true
        }else{
            return false
        }
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getResultScore() -> Int{
        return tempScore
    }
    
}


