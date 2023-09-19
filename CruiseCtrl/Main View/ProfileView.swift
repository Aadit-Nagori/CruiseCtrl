//
//  ProfileView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var house: String = ""
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Image(systemName: "person.crop.circle.fill") // Default Image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                TextField("House", text: $house)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
