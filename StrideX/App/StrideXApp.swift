//
//  StrideXApp.swift
//  StrideX
//
//  Created by Felipe Assis on 2/11/2024.
//

import SwiftUI

@main
struct StrideXApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
