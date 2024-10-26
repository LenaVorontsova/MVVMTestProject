//
//  StartService.swift
//  GoodNews
//
//  Created by Елена Воронцова on 25.10.2024.
//

import UIKit

final class StartService {
    var window: UIWindow?
    
    init(window: UIWindow) {
        self.window = window
        configureWindow()
    }
    
    func configureWindow() {
        if let win = window {
            let navigationController = UINavigationController(rootViewController: NewsListViewController())
            navigationController.navigationBar.isTranslucent = false
            navigationController.navigationBar.prefersLargeTitles = true
            
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .purple
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            
            navigationController.navigationBar.standardAppearance = appearance
            navigationController.navigationBar.scrollEdgeAppearance = appearance

            win.rootViewController = navigationController
            win.makeKeyAndVisible()
        }
    }
}
