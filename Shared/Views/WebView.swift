//
//  WebView.swift
//  Sample (iOS)
//
//  Created by Nasruddin, Shohieb | LIPD on 2022/12/11.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            } else {
                let request = URLRequest(url: URL(string: "https://google.com")!)
                uiView.load(request)
            }
        }
    }
}
