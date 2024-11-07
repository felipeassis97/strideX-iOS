//
//  StartButtonView.swift
//  StrideX
//
//  Created by Felipe Assis on 7/11/2024.
//
import SwiftUI

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
        
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                    .foregroundStyle(.secondary500)

                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    .foregroundStyle(.secondary500)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.secondary500, lineWidth: 1.25)
            )
        }
    }
}
