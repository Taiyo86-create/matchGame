//
//  matchGameApp.swift
//  matchGame
//
//  Created by 水元太陽 on 2024/08/29.
//

import SwiftUI
import FirebaseCore

@main
struct matchGameApp: App {
  init() {
    FirebaseApp.configure()
  }
    var body: some Scene {
        WindowGroup {
            Login()
        }
    }
}
