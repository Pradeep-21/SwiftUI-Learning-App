//
//  LoginViModel.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 11/12/21.
//

import Foundation

@MainActor
class ListViewModel: ObservableObject {
    
    @Published var items: [Items] = []
    
    //MARK: - custom methods
    
    func getData() {
        items = [
        Items(id: "1", email: "pradeep@gmail.com", phone: "1211212323"),
        Items(id: "2", email: "anubu@gmail.com", phone: "34323535"),
        Items(id: "3", email: "divya@gmail.com", phone: "64674464646"),
        Items(id: "4", email: "mukesh@gmail.com", phone: "9797973535"),
        Items(id: "5", email: "prashana@gmail.com", phone: "6635522"),
        Items(id: "6", email: "gowtham@gmail.com", phone: "6576832"),
        Items(id: "7", email: "mogan@gmail.com", phone: "5452421"),
        Items(id: "8", email: "thinesh@gmail.com", phone: "5452421"),
        Items(id: "9", email: "arun@gmail.com", phone: "232343567")
        ]
    }
    
}

extension Array where Element: Equatable {
    func removeDuplicates() -> [Element] {
        var result = [Element]()
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }
        return result
    }
}
