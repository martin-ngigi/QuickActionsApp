//
//  QuickActionsAppApp.swift
//  QuickActionsApp
//
//  Created by Martin Wainaina on 30/01/2025.
//

import SwiftUI

@main
struct QuickActionsAppApp: App {
    private let qaService = QAService.shared
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(qaService)
        }
    }
}
