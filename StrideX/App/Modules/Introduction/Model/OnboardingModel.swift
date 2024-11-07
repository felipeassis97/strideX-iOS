//
//  OnboardingModel.swift
//  StrideX
//
//  Created by Felipe Assis on 7/11/2024.
//

import Foundation
import SwiftUI

struct OnboardingModel: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
}

let onboardingData: [OnboardingModel] = [
    OnboardingModel(
        title: "Discover the Latest",
        headline: "Explore the newest collections from top brands and stay ahead of the trends.",
        image: "Green"
    ),
    OnboardingModel(
        title: "Find Your Fit",
            headline: "Use our size guide and try-on tools to make sure every pair feels just right.",
        image: "Red"
    ),
    OnboardingModel(
        title: "Easy Checkout",
            headline: "Enjoy fast, secure checkout and get your shoes delivered right to your doorstep.",
        image: "Yellow"
    )
]
