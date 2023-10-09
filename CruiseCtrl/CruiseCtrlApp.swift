//
//  CruiseCtrlApp.swift
//  CruiseCtrl
//
//  Created by Aadit Nagori on 9/18/23.
//

import SwiftUI
import FirebaseCore
import Firebase
import FirebaseAuth

@main
struct CruiseCtrlApp: App {
    @ObservedObject private var firebaseInit = FirebaseInitializer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    class FirebaseInitializer: ObservableObject {
        init() {
            FirebaseApp.configure()
        }
    }
}
