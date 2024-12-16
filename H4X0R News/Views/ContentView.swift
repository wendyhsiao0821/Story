//
//  ContentView.swift
//  H4X0R News
//
//  Created by Wendy Hsiao on 2024/12/5.
//

import SwiftUI




struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}


//let posts = [
//    Post(id: "1", title: "Halo"),
//    Post(id: "2", title: "bonjour"),
//    Post(id: "3", title: "hola"),
//]
