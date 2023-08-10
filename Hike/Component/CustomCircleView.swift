//
//  CustomCircleView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/10.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .customIndigoMedium,
                        .customSalmonLight
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
