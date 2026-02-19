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
    @State var color = Color.blue
    @State private var id = 1
    
    var body: some View {
        VStack {
            Text("Why not try...")
                .font(.largeTitle.bold())
            Circle()
                .fill(color)
                .padding()
                .overlay(
                    Image(systemName: "figure.\(selected.lowercased())")
                        .font(.system(size: 144))
                        .foregroundColor(.white)
                )
                .transition(.slide)
                .id(id)
            Text("\(selected)!")
                .font(.title)
            Spacer()
            Button("Try again") {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    color = colors.randomElement() ?? Color.blue
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 12))
            .tint(color)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
