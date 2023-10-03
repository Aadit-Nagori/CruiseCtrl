//
//  NewHouseView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//


// House code, house name, admin username, admin password, address

import SwiftUI

struct NewHouseView: View {
    @State private var hCode: String =  ""
    @State private var hName: String = ""
    @State private var adminUsername: String = ""
    @State private var adminPass: String = ""
    @State private var address: String = ""
    var body: some View {
        ZStack(){
            Color.black.ignoresSafeArea(.all)
            VStack(spacing: 20){
                HStack(){
                    Text("Register New House")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                }
                .foregroundStyle(.white)
                VStack(spacing: 20){
                    TextField("House Code",text: $hCode)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                    
                    TextField("House Name",text: $hName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                    
                    TextField("Admin U",text: $adminUsername)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                    
                    TextField("Admin P",text: $adminPass)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                    TextField("Addy",text: $address)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8.0)
                    
                    Spacer()
                }.foregroundStyle(.gray)
            }.padding()
        }
    }
}

#Preview {
    NewHouseView()
}
//if #available(iOS 17.0, *) {
//    Preview {
//        NewHouseView()
//    }
//} else {
//    // Fallback on earlier versions
//}
