//
//  ContentView.swift
//  Shared
//
//  Created by Shohieb Nasruddin on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
