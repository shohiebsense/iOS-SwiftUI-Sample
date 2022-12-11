//
//  DetailView.swift
//  Sample (iOS)
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/12/11.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        if(url != nil) {
            WebView(urlString: url)
        } else {
            Text("Url not available")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: nil)
    }
}
