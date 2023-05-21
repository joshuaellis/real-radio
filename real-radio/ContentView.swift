//
//  ContentView.swift
//  real-radio
//
//  Created by Josh Ellis on 21/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: Alignment.center) {
            Rectangle().fill(Color(hue: 212 / 360, saturation: 0.80, brightness: 0.80)).ignoresSafeArea()
            
            SpeakerGrillView().padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
