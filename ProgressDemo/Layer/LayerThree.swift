//
//  LayerThree.swift
//  ProgressDemo
//
//  Created by Yi Zhang on 2019/7/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class LayerThree: ProgressLayer {
    
    override func draw(in ctx: CGContext) {
        
        let radius = self.frame.width * 0.45
        let center = CGPoint(x: self.frame.width*0.5, y: self.frame.height*0.5)
        
        // draw a background line
        ctx.setStrokeColor(UIColor.lightGray.withAlphaComponent(0.5).cgColor)
        ctx.setLineWidth(radius * 0.07)
        ctx.addEllipse(in: CGRect(x: self.frame.width * 0.05, y: self.frame.height * 0.05, width: self.frame.width * 0.9, height: self.frame.height * 0.9))
        ctx.strokePath()
        
        // draw the tracker line
        ctx.setStrokeColor(UIColor.orange.cgColor)
        ctx.setLineWidth(radius * 0.08)
        ctx.setLineCap(.round)
        
        let endAngle = (CGFloat(number) * 2 - 0.5) * CGFloat.pi
        ctx.addArc(center: center, radius: radius, startAngle: -0.5 * CGFloat.pi, endAngle: endAngle, clockwise: false)
        
        ctx.strokePath()
        
    }
    
}
