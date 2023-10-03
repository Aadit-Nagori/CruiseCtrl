//
//  ContentView.swift
//  CruiseCtrl
//
//  Created by Aadit Nagori on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTabIndex = 1
    @State private var loggedIn  = true
    
    var body: some View {
        
        if !loggedIn{
            TabView(selection: $selectedTabIndex) {
                LoginView()
                    .tag(1)
                    .tabItem {
                        Label("Login", systemImage: "person.badge.key.fill")
                    }
                RegisterView()
                    .tag(2)
                    .tabItem {
                        Label("User Register", systemImage: "person.fill.badge.plus")
                    }
                NewHouseView()
                    .tag(3)
                    .tabItem {
                        Label("House Register", systemImage: "house.fill")
                    }
                    

            }
        }
        else{
            TabView(selection: $selectedTabIndex) {
                RequestView()
                    .tag(1)
                    .tabItem {
                        Label("Request", systemImage: "figure.wave")
                    }
                DriverView()
                    .tag(2)
                    .tabItem {
                        Label("Driver", systemImage: "car.fill")
                    }
                ProfileView()
                    .tag(3)
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
                AdminView()
                    .tag(4)
                    .tabItem {
                        Label("Admin", systemImage: "lock.fill")
                    }
                
            }
            // }
            //.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            //.tabViewStyle(DefaultTabViewStyle())
            
            .ignoresSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
