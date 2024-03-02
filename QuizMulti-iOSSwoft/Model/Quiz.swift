//
//  Quiz.swift
//  QuizMulti-iOSSwoft
//
//  Created by Antt Min on 2/28/24.
//

import Foundation

struct Question{
    let text : String
    let answer : [String]
    let correctans : String
    
    init(q: String, a: [String], correctAnswer : String) {
        text = q
        answer = a
        correctans = correctAnswer
    }
}

