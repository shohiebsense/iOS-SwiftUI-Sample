//
//  FavoritesTabView.swift
//  Sample
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/14.
//

import SwiftUI

struct FavoritesTabView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            Text("Hobbies")
                .font(.title2)
            
            HStack {
                ForEach(homeData.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 80)
                }.padding()
            }.padding()
            
            Text("Favorite Colors")
                .font(.title2)
            
            HStack(spacing: 30) {
                ForEach(homeData.colors, id:\.self) {
                    color in
                    color.frame(width: 70, height: 70)
                        .cornerRadius(10)
                }
            }.padding()
        }
    }
}

struct FavoritesTabView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesTabView()
    }
}
