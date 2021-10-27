// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let DataArray = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Results
struct Results: Decodable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable,Identifiable {
    var id: String {
        return ObjectId
    }
    let ObjectId: String
    
    let title: String
    let articleDescription: String
    let url: String
    let urlToImage: String
    let publishedAt: Date
}
