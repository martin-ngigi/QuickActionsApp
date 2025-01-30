//
//  AppDelegate.swift
//  QuickActionsApp
//
//  Created by Martin Wainaina on 30/01/2025.
//

import Foundation

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    private let qaService = QAService.shared
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        if let shortcutItem = options.shortcutItem {
            qaService.action = QA(shortcutItem: shortcutItem)
        }
        let configuration = UISceneConfiguration(name: connectingSceneSession.configuration.name, sessionRole: connectingSceneSession.role)
        configuration.delegateClass = SceneDelegate.self
        return configuration
    }
}
