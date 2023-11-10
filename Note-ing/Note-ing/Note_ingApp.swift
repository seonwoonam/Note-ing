//
//  Note_ingApp.swift
//  Note-ing
//
//  Created by seonwoo on 2023/11/10.
//

import SwiftUI

@main
struct Note_ingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
