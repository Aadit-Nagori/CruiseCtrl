//
//  RegisterView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
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
                
                TextField("Full Name", text: $fullName)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                TextField("House", text: $house)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                

                Button(action: submit, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                        Text("Submit")
                            .foregroundColor(.white)
                    }
                    
                })
                .frame(width: 200, height: 50)
                Spacer()

            }
            .padding()
        }
    }
    
    func submit(){
        //submit to firebase
    }
}

#Preview {
    RegisterView()
}
