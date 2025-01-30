//
//  QuickActionType.swift
//  QuickActionsApp
//
//  Created by Martin Wainaina on 30/01/2025.
//

import Foundation

import UIKit

enum QAType: String {
    
    case firstVeiw = "FirstView"
    case secondView = "SecondView"
    
}

enum QA: Equatable {
    
    case firstView
    case secondView
    
    init?(shortcutItem: UIApplicationShortcutItem) {
        
        guard let action = QAType(rawValue: shortcutItem.type) else {
            return nil
        }
        
        switch action {
        case .firstVeiw:
            self = .firstView
        case .secondView:
            self = .secondView
        }
    }
}

class QAService: ObservableObject {
    
    static let shared = QAService()
    @Published var action: QA?
    
}
