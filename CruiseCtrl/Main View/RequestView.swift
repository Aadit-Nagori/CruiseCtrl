//
//  RequestView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//



import SwiftUI

struct RequestView: View {
    @State private var from: String = ""
    @State private var to: String = ""
    
    var body: some View {
        
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack(spacing: 20){
                HStack{
                    Text("Request Ride")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                }
                .foregroundStyle(.white)
                TextField("Starting Location", text: $from)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                TextField("Destination", text: $to)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8.0)
                
                Button(action: request, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                        Text("Request")
                            .foregroundColor(.white)
                    }
                    
                })
                .frame(width: 200, height: 50)
                Spacer()
                
            }
            .padding()
            
        }
    }
    func request(){
        
    }

}


#Preview {
    RequestView()
}
