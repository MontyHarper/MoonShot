//
//  ListLayout.swift
//  MoonShot
//
//  Created by Monty Harper on 9/4/23.
//

import SwiftUI

struct ListLayout: View {
    
    var astronauts: [String: Astronaut]
    var missions: [Mission]
    
    var body: some View {
        

            List {
                
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(mission: mission, astronauts: astronauts)
                    } label: {
                        HStack {
                            Image(mission.image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 80)
                                .padding()
                            VStack {
                                Text(mission.displayName)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text(mission.formattedLaunchDate)
                                    .font(.caption)
                                    .foregroundColor(.white.opacity(0.5))
                            }
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            //                            .background(.lightBackground)
                            //                            .clipShape(RoundedRectangle(cornerRadius:10))
                        }
                        .clipShape(RoundedRectangle(cornerRadius:10))
                        .overlay(RoundedRectangle(cornerRadius:10)
                            .stroke(.lightBackground, lineWidth: 4)
                        )
                    }
                }
                .listRowBackground(Color.darkBackground)
                
                
            }
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .backgroundStyle(.darkBackground)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        ListLayout(astronauts:astronauts, missions:missions)
    }
}

