//
//  Question.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/16.
//

import Foundation

struct Question: Identifiable {
    let id: Int
    let score: Int
    let answerCount: Int
    let viewCount: Int
    let title: String
    let body: String?
    let date: Date
    let tags: [String]
    var owner: User?
}

extension Question: Decodable {
    enum CodingKeys: String, CodingKey {
        case score, title, body, tags, owner
        case id = "question_id"
        case date = "creation_date"
        case answerCount = "answer_count"
        case viewCount = "view_count"
    }
}
