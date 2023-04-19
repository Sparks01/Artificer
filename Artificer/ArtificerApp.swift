//
//  ArtificerApp.swift
//  Artificer
//
//  Created by Jose Munoz on 3/29/23.
//

import SwiftUI

@main
struct ArtificerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
