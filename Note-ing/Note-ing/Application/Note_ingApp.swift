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
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
