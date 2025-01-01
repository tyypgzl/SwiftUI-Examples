//
//  Profile.swift
//  Landmark
//
//  Created by Tayyip Güzel on 31.12.2024.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_cumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
