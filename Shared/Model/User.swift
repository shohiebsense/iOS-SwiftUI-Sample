//
//  User.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/16.
//

import Foundation
import UIKit

struct User {
    let name: String?
    let reputation: Int?
    let profileImageURL: URL?
    var profileImage: UIImage?
}

extension User: Decodable {
    enum CodingKeys: String, CodingKey {
        case reputation
        case name = "display_name"
        case profileImageURL = "profile_image"
    }
}
