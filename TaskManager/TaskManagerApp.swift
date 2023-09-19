//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Andrei-Cristian Stanciu on 19.09.2023.
//

import SwiftUI

@main
struct TaskManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
