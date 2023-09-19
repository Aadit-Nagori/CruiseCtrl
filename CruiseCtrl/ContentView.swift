//
//  ContentView.swift
//  CruiseCtrl
//
//  Created by Aadit Nagori on 9/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTabIndex = 1

    var body: some View {
        TabView(selection: $selectedTabIndex) {
            RequestView()
                .tag(0)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
            
            
            DriverView()
                .tag(2)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
            AdminView()
                .tag(3)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
