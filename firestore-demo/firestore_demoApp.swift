//
//  firestore_demoApp.swift
//  firestore-demo
//
//  Created on 11/21/21.
//

import SwiftUI
import Firebase

@main
struct firestore_demoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
