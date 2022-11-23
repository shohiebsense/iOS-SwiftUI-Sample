//
//  APIResource.swift
//  Sample (iOS)
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/16.
//

import Foundation

protocol APIResource {
    associatedtype ModelType: Decodable
    var methodPath: String { get }
    var filter: String? { get }
}

