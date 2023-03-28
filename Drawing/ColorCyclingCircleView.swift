//
//  ColorCyclingCircleView.swift
//  Drawing
//
//  Created by Maximilian Berndt on 2023/03/28.
//

import SwiftUI

struct ColorCyclingCircleView: View {
    @State private var colorCycle = 0.0
    
    var body: some View {
        ColorCyclingCircle(amount: colorCycle)
            .frame(width: 300, height: 300)
        
        Slider(value: $colorCycle)
    }
}

struct ColorCyclingCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCyclingCircleView()
    }
}
