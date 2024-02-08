//
//  ContentView.swift
//  SpaceWalk
//
//  Created by Lucas on 1/2/24.
//

import SwiftUI

let astronauts = Bundle.main.decode("astronauts.json")

struct ContentView: View {
    var body: some View {
        Text(String(astronauts.count))
    }
}

#Preview {
    ContentView()
}
