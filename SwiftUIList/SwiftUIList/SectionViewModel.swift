//
//  SectionViewModel.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 14/12/21.
//

import Foundation

class SectionViewModel: ObservableObject {
    
    @Published var movies: [Movie] = []
    @Published var mygroups: [TestData] = []
    
    func getdata() {
        movies = [
            Movie(title: "Episode IV – A New Hope", period: .original),
            Movie(title: "Episode V – The Empire Strikes Back", period: .original),
            Movie(title: "Episode VI – Return of the Jedi", period: .original),
            Movie(title: "Star Wars: The Clone Wars", period: .standalone),
            Movie(title: "Rogue One", period: .standalone),
            Movie(title: "Solo", period: .standalone),
            Movie(title: "The Mandalorian", period: .standalone)
        ]
        
        mygroups = [
            TestData(title: "Numbers", items: ["1","2","3"]),
            TestData(title: "Letters", items: ["A","B","C"]),
            TestData(title: "Symbols", items: ["€","%","&"])
        ]
    }
    
}
