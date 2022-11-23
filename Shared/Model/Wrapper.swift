//
//  Wrapper.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/16.
//

import Foundation

struct Wrapper<T: Decodable> : Decodable {
    let items: [T]
}
