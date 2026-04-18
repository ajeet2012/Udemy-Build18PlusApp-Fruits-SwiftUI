//
//  FructusApp.swift
//  Fructus
//
//  Created by Ajeet Sharma on 16/04/26.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @AppStorage("shouldRestartOnboarding") var shouldRestartOnboarding: Bool = false

    var body: some Scene {
        WindowGroup {
            Group {
                if isOnboarding {
                    OnboardingView()
                } else {
                    ContentView()
                }
            }
            .onAppear {
                if shouldRestartOnboarding {
                    isOnboarding = true
                    shouldRestartOnboarding = false // reset
                }
            }
        }
    }
}
