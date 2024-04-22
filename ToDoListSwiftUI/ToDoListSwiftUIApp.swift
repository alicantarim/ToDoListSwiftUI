//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Alican TARIM on 13.04.2024.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages models for view
 */

@main
struct ToDoListSwiftUIApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
