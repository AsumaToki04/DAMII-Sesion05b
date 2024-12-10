//
//  Sesion05bApp.swift
//  Sesion05b
//
//  Created by Asuma Toki on 12/10/24.
//

import SwiftUI

@main
struct Sesion05bApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
