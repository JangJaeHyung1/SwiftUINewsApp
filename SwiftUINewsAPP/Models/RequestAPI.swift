//
//  RequestAPI.swift
//  SwiftUINewsAPP
//
//  Created by jh on 2021/10/27.
//

import Foundation


class RequestAPI {
    
    let apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String
    
    func fetchData(){
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(apiKey)")
    }
}
