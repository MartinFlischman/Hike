//
//  CardView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/08.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // Mark: - Card
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
            // Mark: - Header
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        
                        Button {
                           // Action: Show a sheet
                            print("The button was pressed.")
                        }   label: {
                            Text("Button")
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }   // Header - End
                .padding(.horizontal, 30)
                
            // Mark: - Main Content
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color("ColorIndigoMedium"),
                                    Color("ColorSalmonLight")
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
            // Mark: - Footer
                
            }  // VStack - End
        } // Card
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
