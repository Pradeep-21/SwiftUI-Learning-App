//
//  PropertyWrappers.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 15/12/21.
//

import SwiftUI

struct ObservedWrappers: View {
    
    @StateObject var state = StateObjectVM()
    @State private var selection = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("StateObject: \(state.num)")
                Button("Increase StateObject", action: {
                    state.num += 1
                    print("StateObject: \(state.num)")
                })
                NavigationLink(destination: ChildView(observedObject: state), isActive: $selection) {
                    Button(action: {
                        selection = true
                    }) {
                        Text("Navigation")
                            .font(.headline)
                            .foregroundColor(.darkishPink)
                    }
                }
                
            }
            .onChange(of: state.num) { newState in
                print("⛳️⛳️", state.num)
                print("StateObject on change: \(newState)")
            }
            .onAppear {
                print("🏸🏄", state.num)
            }
        }
    }
}

struct ChildView: View {
    
    @ObservedObject var observedObject: StateObjectVM
    
    var body: some View {
        VStack {
            Text("ObservedObject: \(observedObject.num)")
            Button("Increase observedObject", action: {
                observedObject.num += 1
                print("ObservedObject \(observedObject.num)")
            })
        }
    }
    
}

struct StateTestView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedWrappers()
    }
}


