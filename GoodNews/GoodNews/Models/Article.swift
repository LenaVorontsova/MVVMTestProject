//
//  Article.swift
//  GoodNews
//
//  Created by Елена Воронцова on 26.10.2024.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
