//
//  CollectionView.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 15/12/21.
//

import SwiftUI

struct CollectionView: View {
    let data: [DataModel] = [
        .init(id: "0", name: "SteveJobs", imageName: "image"),
        .init(id: "1", name: "Satya Nadella", imageName: "image"),
        .init(id: "2", name: "Jeff Bezos", imageName: "image"),
        .init(id: "3", name: "Tim Cook", imageName: "image")
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(data) { items in
                    ForEach(0..<3) { item in
                        Collection(data: items)
                    }
                }
            }.navigationBarTitle("CollectionView")
        }
    }
    
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}

struct Collection: View {
    let data: DataModel
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                HStack {
                    ForEach(0..<4) { items in
                        Spacer()
                        Image(self.data.imageName)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Spacer()
                    }.padding(.bottom, 16)
                }
                HStack {
                    Spacer()
                        .frame(width: 30)
                    Text(self.data.name)
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                    Text(self.data.name)
                    Spacer()
                }
            }
        }
    }
}

struct DataModel: Identifiable {
    let id: String
    let name: String
    let imageName: String
}
