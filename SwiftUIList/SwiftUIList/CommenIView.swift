//
//  CommenView.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 02/12/21.
//

import SwiftUI

struct EntryFiled: View {
    
    var placeHolder: String
    @Binding var text: String
    
    var body: some View {
        TextField("", text: $text)
            .background(.blue)
            .placeHolder(isShow: text.isEmpty, text: placeHolder, color: .black)
            .padding()
//            .background(Color.lightBlueColor)
//            .cornerRadius(10)
//            .foregroundColor(.green)
    }
    
}

struct Titil1: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.darkishPink)
            .padding()
            .background(.blue)
            .cornerRadius(5)
    }
}

struct PlaceholderStyle: ViewModifier {
    
    var showPlaceHolder: Bool
    var placeholder: String
    var color: Color
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            if showPlaceHolder {
                Text(placeholder)
                    .foregroundColor(.yellow)
            }
            content   // Only return the content view without changing the rendering view
                .background(.green)
        }
        .background(.red)
    }
}

extension View {
    func placeHolder(isShow: Bool, text: String, color: Color) -> some View {
        modifier(PlaceholderStyle(showPlaceHolder: isShow, placeholder: text, color: color))
    }
    
    func title1() -> some View {
        modifier(Titil1())
    }
}
