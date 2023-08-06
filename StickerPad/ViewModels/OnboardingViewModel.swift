//
//  OnboardingViewModel.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var isFirstLaunch: Bool = true

    init() {
    }

    func completeOnboarding() {
        isFirstLaunch = false
    }
}

