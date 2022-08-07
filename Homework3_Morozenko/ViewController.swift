//
//  ViewController.swift
//  Homework3_Morozenko
//
//  Created by Danil Morozenko on 07.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var screenView: UIView!
    @IBOutlet var redLabelName: UILabel!
    @IBOutlet var greenLabelName: UILabel!
    @IBOutlet var blueLabelName: UILabel!
    @IBOutlet var redCodeColor: UILabel!
    @IBOutlet var blueCodeColor: UILabel!
    @IBOutlet var greenCodeColor: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenView.layer.cornerRadius = screenView.frame.height / 8
        setupSliders()
        editLabels()
    }

    @IBAction func redSliderAction(_ sender: Any) {
        redCodeColor.text = String(round(redSlider.value * 100) / 100)
        screenView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderAction(_ sender: Any) {
        greenCodeColor.text = String(round(greenSlider.value * 100) / 100)
        screenView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueCodeColor.text = String(round(blueSlider.value * 100) / 100)
        screenView.backgroundColor = UIColor.init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
 
    private func setupSliders() {
        redSlider.value = 0.5
        redSlider.maximumValue = 1
        
        greenSlider.value = 0.35
        greenSlider.maximumValue = 1
        
        blueSlider.value = 0.73
        blueSlider.maximumValue = 1
    }
    
   private func editLabels() {
       redCodeColor.text = String(redSlider.value)
       greenCodeColor.text = String(greenSlider.value)
       blueCodeColor.text = String(blueSlider.value)
    }
}

