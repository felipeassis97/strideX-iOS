//
//  OnboardingItemView.swift
//  StrideX
//
//  Created by Felipe Assis on 7/11/2024.
//

import SwiftUI

struct OnboardingItemView: View {
    var onboarding: OnboardingModel
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Image(onboarding.image)
                .resizable()
                .scaledToFill()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                SkipButtonView()
                    .frame(alignment: .trailing)
                Spacer()
                Text(onboarding.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.primary50)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(onboarding.headline)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary50)
                    .padding(.horizontal, 80)

                StartButtonView()
                    .padding(.bottom, 20)
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .padding(.horizontal, 20)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)

    }
}
