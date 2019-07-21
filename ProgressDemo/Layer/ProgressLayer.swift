//
//  ProgressLayer.swift
//  ProgressDemo
//
//  Created by Yi Zhang on 2019/7/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ProgressLayer: CALayer {
    
    var number: Double = 0.0 {
        didSet {
            self.textLayer.string = String(format: "%.01f%%", number * 100)
            // 开始绘制
            self.textLayer.setNeedsDisplay()
            self.setNeedsDisplay()
        }
    }
    
    lazy var textLayer: CATextLayer = {
        let layer = CATextLayer()
        let font = UIFont.systemFont(ofSize: 14)
        // Cast font as CFTypeRef
        layer.font = font.fontName as CFTypeRef
        layer.fontSize = font.pointSize
        // 设置字体颜色
        layer.foregroundColor = UIColor.black.cgColor
        layer.contentsScale = UIScreen.main.scale
        layer.alignmentMode = CATextLayerAlignmentMode.center
        layer.isWrapped = true
        layer.string = ""
        
        return layer
    }()
    
    override init() {
        super.init()
        self.addSublayer(textLayer)
    }
    
    override init(layer: Any) {
        super.init(layer: layer)
        self.addSublayer(textLayer)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSublayers() {
        super.layoutSublayers()
        
        let height = NSString(string: "%100").boundingRect(with: CGSize(width: CGFloat.infinity, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14)], context: nil).height
        self.textLayer.frame = CGRect(x: 0, y: self.frame.height*0.5 - height*0.5, width: self.frame.width, height: height)
    }
    
}
