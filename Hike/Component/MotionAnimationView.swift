//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/10.
//

import SwiftUI

struct MotionAnimationView: View {
    // Mark: - Properties
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    
    // Mark: - Functions
    
    // 1. Random Coordinate
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. Random Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. Random Scale
    
    
    // 4. Random Speed
    
    
    // 5. Random Delay
    
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
            }
        } // ZStack - End
        .frame(width: 256, height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            
            MotionAnimationView()
        }
    }
}
