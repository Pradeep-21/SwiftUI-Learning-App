//
//  SwiftUIListApp.swift
//  SwiftUIList
//
//  Created by Pradeep Selvaraj on 27/11/21.
//

import SwiftUI

@main
struct SwiftUIListApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var listViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            StaticList()
                .accentColor(.darkishPink)
                .environmentObject(listViewModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
