//
//  matchGameApp.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/29.
//

import SwiftUI
import FirebaseCore

class AppDelegate:NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct matchGameApp: App {
    var body: some Scene {
        WindowGroup {
            Splash()
        }
    }
}
