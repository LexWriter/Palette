//
//  ViewController.swift
//  Palette
//
//  Created by Алексей on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var paletteView: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func slidersChanged() {
        
        redLabel.text = String(round(100 * redSlider.value)/100)
        greenLabel.text = String(round(100 * greenSlider.value)/100)
        blueLabel.text = String(round(100 * blueSlider.value)/100)
        
        paletteView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
        }
}

