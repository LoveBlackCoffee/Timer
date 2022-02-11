//
//  timerApp.swift
//  timer WatchKit Extension
//
//  Created by 加藤健吾 on 2022/02/06.
//

import SwiftUI

@main
struct timerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
