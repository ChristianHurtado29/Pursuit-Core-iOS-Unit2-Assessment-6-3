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
        
        redSlider.value = Float(crayon!.red)
        greenSlider.value = Float(crayon!.green)
        blueSlider.value = Float(crayon!.blue)
        alphaStepper.value = Double(view.alpha)
        
        view.backgroundColor = UIColor(red: CGFloat(crayon!.red/255)
            , green: CGFloat(crayon!.green/255), blue: CGFloat(crayon!.blue/255), alpha: 1.0)
    }
    
    @IBAction func redSlide(_ sender: UISlider) {
        redSlider.value = sender.value
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: view.alpha)
    }
    
    @IBAction func greenSlide(_ sender: UISlider) {
        greenSlider.value = sender.value
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: view.alpha)
    }
    
    @IBAction func blueSlide(_ sender: UISlider) {
        blueSlider.value = sender.value
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: view.alpha)
    }
    
    
    @IBAction func alphaLevel(_ sender: UIStepper) {
        view.alpha = CGFloat(sender.value)
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("here")
        redSlider.value = Float(crayon!.red)
        greenSlider.value = Float(crayon!.green)
        blueSlider.value = Float(crayon!.blue)
        
        view.backgroundColor = UIColor(red: CGFloat(crayon!.red/255)
        , green: CGFloat(crayon!.green/255), blue: CGFloat(crayon!.blue/255), alpha: 1.0)
        
        view.alpha = 1.0
    }
    
    
}
