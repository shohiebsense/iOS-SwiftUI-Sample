//
//  ContentView.swift
//  Shared
//
//  Created by Shohieb Nasruddin on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.69, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("hiddenlake")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Shohieb Nasruddin")
                    .font(Font.custom("Barlow-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Pedestrian Walker")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(
                text: "+62 123 456 780", imageName: "phone.fill")
                InfoView(
                text: "shohieb.nasruddin@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
