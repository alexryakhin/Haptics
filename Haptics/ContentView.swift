//
//  ContentView.swift
//  Haptics
//
//  Created by Alexander Ryakhin on 1/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(HapticCase.allCases, id: \.self) { haptic in
                Button {
                    haptic.vibrate()
                } label: {
                    Text("\(haptic.rawValue.capitalized)")
                }
            }
            .navigationTitle("Haptics")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
