//
//  NetworkManager.swift
//  Sample (iOS)
//
//  Created by Shohieb Nasruddin on 2022/11/16.
//

import Foundation
import UIKit

class NetworkManager {
    func load<T>(url: URL, withCompletion completion: @escaping (T?) -> Void){
        let task = URLSession.shared.dataTask(with: url){
            (data, _, _) -> Void in
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            switch T.self {
            case is UIImage.Type:
                DispatchQueue.main.async {
                    completion(UIImage(data: data) as? T)
                }
            case is Question.Type:
                let wrapper = try? JSONDecoder().decode(Wrapper.self, from: data)
                DispatchQueue.main.async {
                    completion(wrapper?.items[0] as? T)
                }
            case is [Question].Type:
                let wrapper = try? JSONDecoder().decode(Wrapper.self, from: data)
                DispatchQueue.main.async { completion(wrapper?.items as? T) }
            default: break
            }
        }
        task.resume()
    }
}
