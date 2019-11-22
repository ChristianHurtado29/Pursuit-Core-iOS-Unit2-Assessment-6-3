//
//  DetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Christian Hurtado on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    
    var crayon: Crayon?
    
    
    @IBOutlet weak var crayonNameLabel:UILabel!
    
    
    @IBOutlet weak var redSlider:UISlider!
    @IBOutlet weak var greenSlider:UISlider!
    @IBOutlet weak var blueSlider:UISlider!
    
    
    @IBOutlet weak var alphaStepper:UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crayonNameLabel.text = crayon?.name
        
//        redSlider.value = Float((crayon?.red)!)
//        greenSlider.value = Float((crayon?.green)!)
//        blueSlider.value = Float((crayon?.blue)!)
        
        view.backgroundColor = UIColor(red: CGFloat(crayon!.red/255)
            , green: CGFloat(crayon!.green/255), blue: CGFloat(crayon!.blue/255
        ), alpha: 1.0)
    }
    
    
    @IBAction func redSlide(_ sender: UISlider) {
        
        
        crayon?.red = Double(sender.value)
    }
    
    @IBAction func greenSlide(_ sender: UISlider) {
        crayon?.green = Double(sender.value)
    }
    
    @IBAction func blueSlide(_ sender: UISlider) {
        crayon?.blue = Double(sender.value)
    }
    
    
    @IBAction func alphaLevel(_ sender: UIStepper) {
        view.alpha = CGFloat(sender.value)
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        
        redSlider.value = Float((crayon?.red)!)
        greenSlider.value = Float((crayon?.green)!)
        blueSlider.value = Float((crayon?.blue)!)
    }
    
    
    
}
