//
//  HomeView.swift
//  Sample
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/14.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        VStack {
            Text("Hi there")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Image(homeData.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40).padding()
            Text(homeData.name)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
