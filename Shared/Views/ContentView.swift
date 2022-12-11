//
//  ContentView.swift
//  Shared
//
//  Created by Shohieb Nasruddin on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
