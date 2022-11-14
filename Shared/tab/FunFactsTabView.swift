//
//  FunFactsTabView.swift
//  Sample
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/11/14.
//

import SwiftUI

struct FunFactsTabView: View {
    
    @State private var funFact = ""
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button("Show Random Fact"){
                funFact = homeData.funFacts.randomElement()!
            }
        }.padding()
    }
}

struct FunFactsTabView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsTabView()
    }
}
