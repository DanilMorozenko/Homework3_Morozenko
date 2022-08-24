//
//  MainViewController.swift
//  Homework3_Morozenko
//
//  Created by Danil Morozenko on 24.08.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setCollor(for color: UIColor)
}

class MainViewController: UIViewController {
    @IBOutlet var buttonOutlet: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // guard let navigationVC = segue.destination as? UINavigationController else { return }
       // guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
    
    @IBAction func ButtonAction(_ sender: Any) {
    }

}

extension MainViewController: SettingsViewControllerDelegate {
    
    func setCollor(for color: UIColor) {
        view.backgroundColor = color
        }
    
    }
    
    

