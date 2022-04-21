//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Gurjinder Singh on 21/04/22.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
