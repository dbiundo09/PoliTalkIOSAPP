//
//  InitialViewTestApp.swift
//  InitialViewTest
//
//  Created by Daniel Biundo on 3/11/23.
//

import SwiftUI

@main
struct InitialViewTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
