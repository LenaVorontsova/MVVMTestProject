//
//  NewsListView.swift
//  GoodNews
//
//  Created by Елена Воронцова on 25.10.2024.
//

import UIKit

protocol NewsListViewProtocol: AnyObject {
    
}

final class NewsListView: UIView {
    public lazy var newsTableView: UITableView = {
        let view = UITableView()
        view.isScrollEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    weak var delegate: NewsListViewProtocol?
    
    init(delegate: NewsListViewProtocol?) {
        super.init(frame: .zero)
        self.backgroundColor = .white
        
        self.delegate = delegate
        addSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubviews() {
        self.addSubview(newsTableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            newsTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            newsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            newsTableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            newsTableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}