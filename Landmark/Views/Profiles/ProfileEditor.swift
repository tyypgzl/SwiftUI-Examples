//
//  ProfileEditor.swift
//  Landmark
//
//  Created by Tayyip Güzel on 1.01.2025.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    @Binding var isDarkMode: Bool
    
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1,  to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto){
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
            }
        }
        List {
            Toggle("Dark Mode", isOn: $isDarkMode)
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default), isDarkMode: .constant(true))
}
