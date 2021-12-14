//
//  ListView.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 27/11/21.
//

import SwiftUI

let kWidth = UIScreen.main.bounds.size.width - 30
let kHeight = UIScreen.main.bounds.size.height

struct ListView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        ZStack {
            Color.systemCyen
                .ignoresSafeArea()
                .blur(radius: 15, opaque: false)
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Welcome")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(.bottom, 30)
                    Image("image")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Spacer()
                        .frame(height: 30)
                    EntryFiled(placeHolder: "First name", text: $firstName)
                    EntryFiled(placeHolder: "Last name", text: $lastName)
                    Spacer()
                        .frame(height: 30)
                    Button {
                        print("Button tapped")
                        print("🏏🏏", firstName, lastName)
                    } label: {
                        Text("Login")
                            .frame(width: kWidth - 32)
                            .padding()
                            .background(Color.darkishPink)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }
                .frame(width: kWidth)
            }
        }
    }
    
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
