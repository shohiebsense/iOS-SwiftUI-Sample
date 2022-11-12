//
//  ContentView.swift
//  Shared
//
//  Created by Shohieb Nasruddin on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage()
                .offset(y: -120)
                .padding(.bottom, -165)
            VStack(alignment: .leading) {
                Text("Hello, You!")
                    .font(.title)
                    .foregroundColor(.blue)
                HStack {
                    Text("Shohiebsense")
                    Spacer()
                    Text("Bandung")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
