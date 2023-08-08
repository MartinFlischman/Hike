//
//  ContentView.swift
//  Hike
//
//  Created by Martin Flischman on 2023/08/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("image-1")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
