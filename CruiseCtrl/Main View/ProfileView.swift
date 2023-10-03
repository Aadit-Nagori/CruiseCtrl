//
//  ProfileView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName: String = "Aadit"
    @State private var lastName: String = "Nagori"
    @State private var house: String = "LXA EHZ"
   
    var body: some View {
        //Color.black.ignoresSafeArea(.all)
        ZStack(){
            Color.black.ignoresSafeArea(.all)
            VStack(alignment: .leading) {
                
                HStack(){
                    Text("Profile")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    .padding()
                    Spacer()
                }
                .foregroundStyle(.white)
                VStack(alignment: .leading) {
                    Text("Firstname: \(firstName)")
                    Text("Lastname: \(lastName)")
                    Text("House code: \(house)")
                }
                .foregroundStyle(.white)
                .padding()
                Spacer()
                
                
            }
        }
        
       
        
    }
    

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
