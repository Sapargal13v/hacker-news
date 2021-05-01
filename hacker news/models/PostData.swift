//
//  PostData.swift
//  hacker news
//
//  Created by Hjaseyyh Grursht on 27.04.2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
