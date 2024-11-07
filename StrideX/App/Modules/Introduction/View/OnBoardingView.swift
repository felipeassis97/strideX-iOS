//
//  OnBoardingView.swift
//  StrideX
//
//  Created by Felipe Assis on 7/11/2024.
//

import SwiftUI

struct OnBoardingView: View {
    var onboarding: [OnboardingModel] = onboardingData
    
    var body: some View {
        TabView {
            ForEach(onboarding) { item in
                OnboardingItemView(onboarding: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}







