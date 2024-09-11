//
//  Question.swift
//  iQuiz
//
//  Created by Thiago Goulart on 01/09/24.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var rightAnswer: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], rightAnswer: 2),
    Question(title: "Em que ano Vingadores Ultimato foi lançado?", answers: ["2019", "2018", "2017"], rightAnswer: 0),
    Question(title: "Quando foi lançado o filme Avatar 2?", answers: ["2014", "2022", "2023"], rightAnswer: 1),
]
