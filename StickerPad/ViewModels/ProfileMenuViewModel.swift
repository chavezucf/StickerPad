//
//  ProfileMenuViewModel.swift
//  StickerPad
//
//  Created by Miguel Chavez on 8/5/23.
//

import Foundation

class ProfileMenuViewModel: ObservableObject {
    @Published var allProfiles: [UserProfile] = []
    @Published var activeProfile: UserProfile?

    func switchProfile(to profileID: UUID) {
        activeProfile = allProfiles.first(where: { $0.id == profileID })
        // Todo Logic to set this as the active profile in the app
    }

    func createProfile(name: String) {
        let newProfile = UserProfile(id: UUID(), username: name, stickerCollection: [], savedStickerPads: [])
        allProfiles.append(newProfile)
        // Todo Logic to save the new profile to persistent storage
    }
}
