//
//  StateProperty.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 17/12/21.
//

import SwiftUI

struct StateProperty: View {
    
    @State private var number = 0
    @State private var showingAlert = false
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            CustomTextField(placeHolder: "Name", text: $email)
            Button {
                print("🏓", email)
            } label: {
                Text("Button click")
            }
        }
        .onChange(of: number) { newState in
            print("State appear: \(newState)")
        }
    }
    
}

struct CustomTextField: View {

    var placeHolder: String
    @Binding var text: String

    var body: some View {
        TextField(placeHolder, text: $text)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
    }

}


struct StateProperty_Previews: PreviewProvider {
    static var previews: some View {
        StateProperty()
    }
}
