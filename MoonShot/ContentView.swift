//
//  ContentView.swift
//  MoonShot
//
//  Created by Monty Harper on 9/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showGridView = true
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        
        NavigationView {
            Group {
                if showGridView {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    showGridView.toggle()
                } label: {
                    if showGridView {
                        Text("List")
                    } else {
                        Text("Grid")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
