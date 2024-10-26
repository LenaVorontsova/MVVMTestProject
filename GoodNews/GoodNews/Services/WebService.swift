//
//  WebService.swift
//  GoodNews
//
//  Created by Елена Воронцова on 25.10.2024.
//

import UIKit

final class WebService {
    public func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
}
