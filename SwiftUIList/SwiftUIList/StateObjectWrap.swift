//
//  StateObject.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 17/12/21.
//

import SwiftUI

struct StateObjectWrap: View {
    
    @StateObject var state = StateObjectVM()
    @EnvironmentObject var enObject: StateObjectVM
    
    var body: some View {
        NavigationView {
            VStack {
                Text("State: \(enObject.num)")
                Button("Increase state", action: {
                    enObject.num += 1
                    print("State: \(enObject.num)")
                })
            }
            .onChange(of: enObject.num) { newState in
                print("⛳️⛳️", enObject.num)
                print("State on change: \(newState)")
            }
        }
    }
    
}

struct StateObjectProperty_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectWrap()
    }
}
