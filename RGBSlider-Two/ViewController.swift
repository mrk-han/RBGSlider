//
//  ViewController.swift
//  RGBSlider-Two
//
//  Created by Mark Han on 2/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorView.layer.borderWidth = 8
        self.colorView.layer.borderColor = UIColor.white.cgColor
        self.colorView.layer.masksToBounds = true
        self.colorView.clipsToBounds = true
        self.colorView.layer.cornerRadius = 5
        
        self.redSlider.setValue(0.5, animated: true)
        self.greenSlider.setValue(0.5, animated: true)
        self.blueSlider.setValue(0.5, animated: true)
        
        changeBoxColor()
    }
    
    @IBAction func changeBoxColor() {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}
