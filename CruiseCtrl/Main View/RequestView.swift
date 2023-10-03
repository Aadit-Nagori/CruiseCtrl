//
//  RequestView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//



import SwiftUI

struct RequestView: View {
    
    var body: some View {
        
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack{
                HStack{
                    Text("Request Ride")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                }
                .foregroundStyle(.white)
                
                
            }
            
        }
    }

}


#Preview {
    RequestView()
}
