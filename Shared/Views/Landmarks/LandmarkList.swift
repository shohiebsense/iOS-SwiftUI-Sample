//
//  LandmarkList.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/15.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var isShowingFavoritesOnly = false
    @State private var progressAmount = 0.0
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondsPassed = 0
    
    
    
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!isShowingFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        VStack {
            ProgressView("Progress", value: progressAmount,
                         total: 100)
            .onReceive(timer) {_ in
                if progressAmount < 100 {
                    progressAmount += 2
                }
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
