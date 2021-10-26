//
//  ContentView.swift
//  SwiftUINewsAPP
//
//  Created by jh on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List(posts, rowContent: { post in
                Text(post.title)
            })
            .navigationTitle("둘러보기")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewLayout(.sizeThatFits)
        //        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}


struct Post: Identifiable{
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "반가워요"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Ohayo")
]
