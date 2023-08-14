//
//  SettingsView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/11.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // Section: Header
            
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color.customGreenLight,
                            Color.customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect trails?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos, but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off your boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                        .frame(maxWidth: .infinity)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)

                
            } // Header - End
            .listRowSeparator(.hidden )
            
            
            // Section: Icons
            
            
            // Section: About
            Section(
                header: Text("About the App"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // 1. Basic Labled Content
                LabeledContent("Application", value: "Hike")
                
                // 2. Advance Labeled Content
                LabeledContent {
                    // Content
                    Text("Hike")
                        .foregroundColor(.primary)
                        .fontWeight(.heavy)
                } label: {
                    // Label
                    HStack {
                        ZStack {
                         RoundedRectangle(cornerRadius: 8)
                            .frame(width: 30, height: 30)
                            .foregroundColor(.blue)
                         Image(systemName: "apps.iphone")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                        }
                        
                        Text("Application")
                    }
                }
                
                
            } // Section - End
            
        } // List - End
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
