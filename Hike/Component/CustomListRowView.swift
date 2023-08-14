//
//  CustomListRowView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/14.
//

import SwiftUI

struct CustomListRowView: View {
    // Mark: Properties
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            // Content
            Text(rowContent)
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack {
                 RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: 30)
                    .foregroundColor(rowTintColor               )
                 Image(systemName: rowIcon)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List() {
            CustomListRowView(
                rowLabel: "Designer",
                rowIcon: "paintpalette",
                rowContent: "John Doe",
                rowTintColor: .pink
            )
        }
    }
}
