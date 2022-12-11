//
//  PostData.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/12/11.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
