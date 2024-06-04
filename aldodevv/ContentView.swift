//
//  ContentView.swift
//  aldodevv
//
//  Created by Akhmad Aldo Sari on 04/06/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    @State var selected = "Baseball"
    var body: some View {
        Text("Why not try…")
            .font(.largeTitle.bold())
        Spacer()
        VStack {
            Circle()
                .fill(colors.randomElement() ?? .blue).padding().overlay(Image(systemName: "figure.\(selected.lowercased())")
                .font(.system(size: 144))
                .foregroundColor(.white))
            Text("\(selected)!")
                .font(.title)
        }
        Spacer()
        Button("Try again") {
            selected = activities.randomElement() ?? "Archery"
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
