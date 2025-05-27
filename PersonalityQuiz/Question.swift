//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Azalia Amanda on 27/05/25.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

