//
//  SkipButtonView.swift
//  StrideX
//
//  Created by Felipe Assis on 7/11/2024.
//

import SwiftUI

struct  SkipButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
        
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Spacer()
                Text("Skip")
                    .foregroundStyle(.secondary500)
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundStyle(.secondary500)
            }
            .padding(.horizontal, 80)
            .padding(.vertical, 10)
        }
    }
}
