//
//  LayerFour.swift
//  ProgressDemo
//
//  Created by Yi Zhang on 2019/7/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class LayerFour: ProgressLayer {
    
    override func draw(in ctx: CGContext) {
        
        let radius = self.frame.width * 0.45
        let center = CGPoint(x: self.frame.width*0.5, y: self.frame.height*0.5)
        
        ctx.setStrokeColor(UIColor.lightGray.withAlphaComponent(0.5).cgColor)
        ctx.setLineWidth(radius * 0.07)
        ctx.addEllipse(in: CGRect(x: self.frame.width * 0.05, y: self.frame.height * 0.05, width: self.frame.width * 0.9, height: self.frame.height * 0.9))
        ctx.strokePath()
        
        ctx.setFillColor(UIColor.green.cgColor)
        let startAngle = CGFloat.pi * 0.5 - CGFloat(number) * CGFloat.pi
        let endAngle = CGFloat.pi * 0.5 + CGFloat(number) * CGFloat.pi
        ctx.addArc(center: center, radius: radius, startAngle:startAngle, endAngle: endAngle, clockwise: false)
        // 连接两个点
        ctx.closePath()
        
        ctx.fillPath()
        
    }
    
}
