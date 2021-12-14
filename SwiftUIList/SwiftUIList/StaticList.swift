//
//  StaticList.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 10/12/21.
//

import SwiftUI

struct StaticList: View {
    
    @StateObject var listVM = ListViewModel()
    @EnvironmentObject var listViewM: ListViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listVM.items, id: \.self) { item in
                    NavigationLink(destination: Text("Hi \(item.email ?? "-")")) {
                        AddView(item: item)
                    }
                }
                .onDelete(perform: { indexset in
                    for index in indexset {
                        listVM.items.remove(at: index)
                    }
                })
                .onMove {
                    listVM.items.move(fromOffsets: $0, toOffset: $1)
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(trailing: EditButton())
            .onAppear {
                listVM.getData()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}

struct AddView: View {
    @StateObject var items = ListViewModel()
    var item: Items
    
    var body: some View {
        VStack {
            Text(item.email ?? "-")
                .padding()
                .foregroundColor(.darkishPink)
            Text(item.phone ?? "-")
                .padding()
                .foregroundColor(.black)
        }
    }
}


