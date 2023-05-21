//
//  SpeakerGrillView.swift
//  real-radio
//
//  Created by Josh Ellis on 21/05/2023.
//

import SwiftUI

struct SpeakerGrillView: View {
    var dotsPerLine = [5, 9, 13, 13, 15, 15, 17, 17, 17, 17, 17, 15, 15, 13, 13, 9, 5]
    
    var body: some View {
        ZStack {
            mesh
        }
    }
    
    @ViewBuilder
    var mesh: some View {
        GeometryReader { geometry in
            let maxDotCount = Int(floor(geometry.size.width / 10))
            
            VStack(spacing: 0){
                ForEach((1...maxDotCount), id: \.self){ row in
                    HStack(spacing: 0) {
                        ForEach((1...maxDotCount), id: \.self) { dot in
                            if(row == 1 && dot < 3 || row == 1 && dot > maxDotCount - 2 || row == 2 && dot == 1 || row == 2 && dot == maxDotCount) {
                                Circle().fill(.black).offset(x: CGFloat((dot - 1) * 2), y: 0).opacity(0)
                            }
                            else if (row == maxDotCount && dot < 3 || row == maxDotCount && dot > maxDotCount - 2 || row == maxDotCount - 1 && dot == 1 || row == maxDotCount - 1 && dot == maxDotCount) {
                                Circle().fill(.black).offset(x: CGFloat((dot - 1) * 2), y: 0).opacity(0)
                            }
                            else {
                                Circle().fill(.black).offset(x: CGFloat((dot - 1) * 2), y: 0).opacity(0.4)
                            }
                        }
                    }.offset(x: 0, y: CGFloat((row - 1) * 2)).frame(height: 8)
                }
            }
        }
    }
}


struct SpeakerGrillView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerGrillView().frame(width: 320)
    }
}
