//
//  QuestionsResource.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/16.
//

import Foundation

struct QuestionsResource: APIResource {
    typealias ModelType = Question
    var id: Int?
    
    var methodPath: String {
        guard let id = id else {
            return "/questions"
        }
        return "/questions/\(id)"
    }
    
    var filter: String? {
        id != nil ? "!9_bDDxJY5" : nil
    }
}
