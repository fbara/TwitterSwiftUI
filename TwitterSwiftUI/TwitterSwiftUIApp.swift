//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Frank Bara on 2/15/22.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
