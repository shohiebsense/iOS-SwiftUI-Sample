//
//  StoryTabView.swift
//  Sample
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/14.
//

import SwiftUI

struct StoryTabView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text(homeData.story)
                    .font(.body)
                    .padding()
            }
        }.padding([.top, .bottom], 50)
    }
}

struct StoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        StoryTabView()
    }
}
