//
//  StateObViewModel.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 17/12/21.
//

import SwiftUI

class StateObjectVM: ObservableObject {
    
    @Published var num: Int = 0
    var datas: [Items] = []
    
    func someAPI() {
        // some code
    }
    
    
}
