//
//  Model.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 11/12/21.
//

import Foundation

struct Items: Equatable {
    
    var id: String?
    var email: String?
    var phone: String?
}

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var period: Period
}


enum Period: String, CaseIterable {
    case original = "Original trilogy"
    case prequel = "Prequel trilogy"
    case sequel = "Sequel trilogy"
    case standalone = "Standalone"
}

struct TestData: Identifiable {
    var id = UUID()
    var title: String
    var items: [String]
}
