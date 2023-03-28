//
//  ContentView.swift
//  Drawing
//
//  Created by Maximilian Berndt on 2023/03/26.
//

import SwiftUI



struct ContentView: View {
    
    enum Sessions: String, CaseIterable {
        case Blur
        case Checkerboard
        case ColorCyclingCircle
        case Flower
        case ScreenBlender
        case Spirograph
        case Trapezoid
        
        @ViewBuilder
        func view() -> some View {
            switch self {
            case .Blur: BlurView()
            case .Checkerboard: CheckerboardView()
            case .ColorCyclingCircle: ColorCyclingCircleView()
            case .Flower: FlowerView()
            case .ScreenBlender: ScreenBlenderView()
            case .Spirograph: SpirographView()
            case .Trapezoid: TrapezoidView()
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Sessions.allCases, id: \.rawValue) { lesson in
                    NavigationLink {
                        lesson.view()
                    } label: {
                        Text(lesson.rawValue)
                    }
                    
                }
                
            }
            .navigationTitle("Drawing Session")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
