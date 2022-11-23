//
//  Formatting.swift
//  Sample (iOS)
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/23.
//

import Foundation
import SwiftUI

extension Int {
    var thousandsFormatting: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let number = self > 1000
        ? NSNumber(value: Float(self) / 1000)
        : NSNumber(value: self)
        return formatter.string(from: number)!
    }
}

extension Date {
    var formatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
}
