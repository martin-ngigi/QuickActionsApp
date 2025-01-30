//
//  ContentView.swift
//  QuickActionsApp
//
//  Created by Martin Wainaina on 30/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstScreen: Bool = false
    @State var secondScreen: Bool = false
    
    @State var navigationValue: Int? = nil

    @EnvironmentObject var qaService: QAService
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        NavigationView{
            VStack (spacing: 20){
                Text("Main View")
                    //.background(Color.white)
                /*
                NavigationLink(destination: FirstView(), isActive: $firstScreen) {
                    Button {
                        firstScreen = true
                    } label: {
                        Text("first view")
                    }
                }.isDetailLink(false)
                
                NavigationLink(destination: SecondView(), isActive: $secondScreen) {
                    Button {
                        secondScreen = true
                    } label: {
                        Text("second view")
                    }
                }.isDetailLink(false)
                */
                
                
                
                NavigationLink(tag: 1, selection: $navigationValue) {
                    FirstView()
                        .font(.largeTitle)
                } label: {
                    EmptyView()
                }
                NavigationLink(tag: 2, selection: $navigationValue) {
                    SecondView()
                        .font(.largeTitle)
                } label: {
                    EmptyView()
                }
                
            }
            .onChange(of: scenePhase) { newVal in
                switch newVal {
                case .active:
                    performAction()
                default:
                    break
                }
            }
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    func performAction() {
        guard let action = qaService.action else { return }
        
        switch action {
        case .firstView:
            print("in performAction first")
            //firstScreen = true
            navigationValue = 1

        case .secondView:
            print("in performAction second")
           // secondScreen = true
            navigationValue = 2
        }
        
        qaService.action = nil
    }
}


#Preview {
    ContentView()
}
