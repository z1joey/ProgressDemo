//
//  ViewController.swift
//  ProgressDemo
//
//  Created by Yi Zhang on 2019/7/21.
//  Copyright © 2019 Yi Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let slider = UISlider(frame: .zero)
    
    let layerOne = LayerOne()
    let layerTwo = LayerTwo()
    let layerThree = LayerThree()
    let layerFour = LayerFour()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.slider)
        self.slider.addTarget(self, action: #selector(self.sliderValueChanged), for: .valueChanged)
        
        self.view.layer.addSublayer(layerOne)
        self.view.layer.addSublayer(layerTwo)
        self.view.layer.addSublayer(layerThree)
        self.view.layer.addSublayer(layerFour)
        
        self.layerOne.number = 0.0
        self.layerTwo.number = 0.0
        self.layerThree.number = 0.0
        self.layerFour.number = 0.0
    }
    
    // frames should be updated in here
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.slider.frame = CGRect(x: 50, y: 70, width: self.view.frame.width - 100, height: 30)
        
        let length: CGFloat = 100
        let space: CGFloat = (self.view.frame.width - 2*length) / 3
        
        self.layerOne.frame = CGRect(x: space, y: 110, width: length, height: length)
        self.layerTwo.frame = CGRect(x: space*2 + length, y: 110, width: length, height: length)
        self.layerThree.frame = CGRect(x: space, y: 110 + length + 30, width: length, height: length)
        self.layerFour.frame = CGRect(x: space*2 + length, y: 110 + length + 30, width: length, height: length)
    }
    
    @objc func sliderValueChanged() {
        self.layerOne.number = Double(self.slider.value)
        self.layerTwo.number = Double(self.slider.value)
        self.layerThree.number = Double(self.slider.value)
        self.layerFour.number = Double(self.slider.value)
    }

}


