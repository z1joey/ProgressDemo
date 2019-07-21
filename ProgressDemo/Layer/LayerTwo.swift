//
//  LayerTwo.swift
//  ProgressDemo
//
//  Created by Yi Zhang on 2019/7/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class LayerTwo: ProgressLayer {
    
    override func draw(in ctx: CGContext) {
        
        let radius = self.frame.width * 0.45
        let center = CGPoint(x: self.frame.width*0.5, y: self.frame.height*0.5)
        
        ctx.setFillColor(UIColor.cyan.cgColor)
        
        // add a line from center to start point
        ctx.move(to: center)
        ctx.addLine(to: CGPoint(x: center.x, y: self.frame.height * 0.05))
        
        let endAngle = (CGFloat(number) * 2 - 0.5) * CGFloat.pi
        ctx.addArc(center: center, radius: radius, startAngle: -0.5*CGFloat.pi, endAngle: endAngle, clockwise: false)
        // add a line from center to end point
        ctx.closePath()
        
        ctx.fillPath()
        
    }
    
}
