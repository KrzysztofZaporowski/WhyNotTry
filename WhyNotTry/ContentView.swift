//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Krzysztof Zaporowski on 19/02/2026.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    var colors = [Color.red, .blue, .purple, .orange, .yellow, .green, .cyan, .mint]
    
    @State var selected = "Baseball"
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            Circle()
                .fill(colors.randomElement() ?? Color.blue)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
            Text("\(selected)!")
                .font(.title)
            Button("Try again") {
                selected = activities.randomElement() ?? "Archery"
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 12))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
