
import Foundation

// MARK: - Results
struct Results: Decodable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable, Hashable{
    let title: String
    let url: String
    let urlToImage: String?
}
