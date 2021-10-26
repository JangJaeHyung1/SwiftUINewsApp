//
//  ContentView.swift
//  SwiftUINewsAPP
//
//  Created by jh on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.29, green: 0.56, blue: 0.36, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello, world!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                .padding()
                Image("iamge")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
