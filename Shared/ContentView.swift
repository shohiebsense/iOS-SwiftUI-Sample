//
//  ContentView.swift
//  Shared
//
//  Created by Shohieb Nasruddin on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            
            StoryTabView()
                .tabItem{
                    Label("Story", systemImage: "book")
                }
            
            FavoritesTabView()
                .tabItem{
                    Label("Favorites", systemImage: "star")
                }
            
            FunFactsTabView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
