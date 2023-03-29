//
//  ArrorView.swift
//  Drawing
//
//  Created by Maximilian Berndt on 2023/03/29.
//

import SwiftUI

struct Arrow: InsettableShape {
    
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // 2/3 to 1/3 proportion
        let triangleHeight = (rect.maxY / 3) * 1
        
        let rectWidth = rect.width / 2
        
        // Draw rectangle
        path.move(to: CGPoint(x: rect.minX + rectWidth / 2, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX - rectWidth / 2, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX - rectWidth / 2, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.minX + rectWidth / 2, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.minX + rectWidth / 2, y: rect.maxY))
        
        // Draw triangle
        path.move(to: CGPoint(x: rect.minX + rectWidth / 2, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + triangleHeight))
        path.addLine(to: CGPoint(x: rect.minX + rectWidth / 2, y: rect.minY + triangleHeight))
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arrow = self
        arrow.insetAmount += amount
        
        return arrow
    }
}

struct ArrorView: View {
    var body: some View {
        Arrow()
            .frame(width: 300, height: 300)
            
    }
}

struct ArrorView_Previews: PreviewProvider {
    static var previews: some View {
        ArrorView()
    }
}
