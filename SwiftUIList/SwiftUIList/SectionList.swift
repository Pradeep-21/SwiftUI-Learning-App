//
//  SectionList.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 14/12/21.
//

import SwiftUI

struct SectionList: View {
    
    @StateObject var sectionListVM = SectionViewModel()
    
    var body: some View {
        List {
            ForEach(sectionListVM.mygroups) { group in
                Section(header: Text(group.title),
                        footer: Text("...Footer...") ) {
                    ForEach(group.items, id: \.self) { item in
                        Text(item)
                    }
                }
            }
        }
        .navigationBarItems(trailing: EditButton())
        .listStyle(PlainListStyle())
        .onAppear() {
            sectionListVM.getdata()
        }
        
    }
    
}

struct SectionList_Previews: PreviewProvider {
    static var previews: some View {
        SectionList()
    }
}


