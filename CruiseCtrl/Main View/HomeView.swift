//
//  HomeView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//



import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text("LOGO")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                Text("Your house does not have any current drivers")
                    .foregroundColor(.white)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
