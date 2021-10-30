//
//  ContentView.swift
//  SwiftUINewsAPP
//
//  Created by jh on 2021/10/26.
//

import SwiftUI

struct URLImage: View {
    let urlString: String?
    @State var data: Data?

    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 70)
                .background(Color.white)
        } else {
            Image("")
                .frame(width: 130, height: 70)
                .background(Color.gray)
                .onAppear {
                    fetchImageData()
                }
        }
    }
    
    private func fetchImageData(){
        guard let urlString = urlString else{
            return
        }
        guard let url = URL(string: urlString) else{
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, _ in
            self.data = data
        }
        task.resume()
    }
}

struct ContentView: View {
    
    @StateObject private var network = RequestAPI.shared
    
    var body: some View {
        NavigationView{
            List{
                ForEach(network.posts, id: \.self) { result in
                    HStack{
                        URLImage(urlString: result.urlToImage)
                            .frame(width: 130, height: 70)
                            .background(Color.gray)
                        Text(result.title)
                            .bold()
                    }.padding(3)
                }
            }.navigationTitle("뉴스 둘러보기")
        }.onAppear {
            network.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

