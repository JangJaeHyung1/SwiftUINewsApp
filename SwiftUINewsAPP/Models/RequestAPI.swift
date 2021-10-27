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
    
    func fetchData(completion: @escaping (_ data: Results?) -> Void){
        
        guard let apiKey = apiKey else { return }
        //        print("test: api Key는 \(apiKey) 입니다.")
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=\(apiKey)") else{
            return
        }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
                completion(nil)
                return
            }
            guard let data = data else{
                return
            }
            do{
                let apiResponse = try JSONDecoder().decode(Results.self, from: data)
                completion(apiResponse)
            }catch(let err){
                print(err.localizedDescription)
            }
        }
        
        task.resume()
    }
}
