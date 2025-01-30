//
//  SecondView.swift
//  QuickActionsApp
//
//  Created by Martin Wainaina on 30/01/2025.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("this is the second view")
            Button("dismiss") {
                dismiss()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.purple)
        .edgesIgnoringSafeArea(.all)
    }
        
}

#Preview {
    SecondView()
}
