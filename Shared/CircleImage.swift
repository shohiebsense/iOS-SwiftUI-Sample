//
//  CircleImage.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/12.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("coffee")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
