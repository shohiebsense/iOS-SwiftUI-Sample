//
//  HomeData.swift
//  Sample
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/14.
//

import SwiftUI


struct HomeData {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let homeData = HomeData(
    image: "coffee",
    name: "Shohiebsense",
    story: "A story about randomly thoughts as a scenario in my yead",
    hobbies:  ["bicycle", "ticket.fill", "book.fill"],
    foods: ["rice", "bread", "rice again"],
    colors: [Color.blue, Color.brown, Color.purple],
    funFacts: [
        "The femur is the longest and largest bone in the human body",
        "The moon is 238,900 milese away"
    ])
