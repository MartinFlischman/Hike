//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/08.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            // Mark: - 3. Depth
            Color("ColorGreenDark")
                .cornerRadius(40)
                .offset(y: 12)
            
            // Mark: - 2. Light
            Color("ColorGreenLight")
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // Mark: - 1. Surface
            
            LinearGradient(
                colors: [
                    Color("ColorGreenLight"),
                    Color("ColorGreenMedium")
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
        .padding()    }
}
