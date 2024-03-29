//
//  ContentView.swift
//  hacker news
//
//  Created by Hjaseyyh Grursht on 26.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
              
    }
        .navigationTitle("Hacker News")
    }
        .onAppear {
            self.networkManager.fetchData() 
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Privet"),
//    Post(id: "3", title: "Bonjour")
//]
