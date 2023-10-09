//
//  DriverView.swift
//  CruiseCtrl
//
//  Created by Henry Webb on 9/19/23.
//

import SwiftUI

struct DriverView: View {
    @State private var size: Int = 5
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack(spacing: 20){
                HStack{
                    Text("Driver View")
                        .foregroundStyle(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                
                ride(Name: "Aadit", Size: 5, From: "136 9th", To: "house")
                ride(Name: "Tommy", Size: 2, From: "dump", To: "house")
                ride(Name: "Henry", Size: 3, From: "501 broadway", To: "house")
                    
                Spacer()
            }.padding()
        }
    }

}

struct ride: View{
    var Name: String
    var Size: Int
    var From: String
    var To: String
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
                .frame(height: 100)
            HStack{
                Text("\(Name), \(Size), \(From), \(To)")
                Spacer()
                Button(action: nav, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                            .foregroundStyle(.green)
                        Text("Maps")
                            .foregroundStyle(.black)
                    }
                    
                })
            }
            .padding()
            
        }
    }
    func nav(){
        
    }

}

#Preview {
    DriverView()
}
