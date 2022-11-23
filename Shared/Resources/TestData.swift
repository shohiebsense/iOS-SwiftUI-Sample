//
//  TestData.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/23.
//

import Foundation

struct TestData {
    static var Questions: [Question] = {
        let url = Bundle.main.url(forResource: "Questions.json", withExtension: nil)!
        let data = try! Data(contentsOf: url)
        let wrapper = try! JSONDecoder().decode(Wrapper<Question>.self, from: data)
        return wrapper.items
    }()
    
    static let user = User(name: "Lumir Sacharov", reputation: 2345, profileImageURL: nil)
}
