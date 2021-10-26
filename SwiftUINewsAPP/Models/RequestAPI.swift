//
//  RequestAPI.swift
//  SwiftUINewsAPP
//
//  Created by jh on 2021/10/27.
//

import Foundation


class RequestAPI {
    static let shared = RequestAPI()
    private init() { }
    
    private let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
    func fetchData(){
        guard let apiKey = apiKey else { return }
        print("test: api Key는 \(apiKey) 입니다.")
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(apiKey)")
        
        
        print(url!)
    }
}
