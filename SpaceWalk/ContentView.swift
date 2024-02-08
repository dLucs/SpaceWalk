//
//  ContentView.swift
//  SpaceWalk
//
//  Created by Lucas on 1/2/24.
//

import SwiftUI

let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
let missions: [Mission] = Bundle.main.decode("missions.json")

struct ContentView: View {
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
