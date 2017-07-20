//
//  ViewController.swift
//  MiraclePill3
//
//  Created by Dawn E Law on 7/14/17.
//  Copyright © 2017 Dawn Law. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickkerBtn: UIButton!
    
    @IBOutlet weak var greatTextField: UITextField!
    @IBOutlet weak var thisIsTextField: UITextField!
    
    @IBOutlet weak var successImage: UIImageView!
    @IBOutlet weak var buyNowBtn: UIButton!
    //@IBOutlet var buyNowBtn: [UIButton]!
    let states = ["Alabama","Arkansas","Alaska","Colorado","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
     //   greatTextField.isHidden = true
     //   thisIsTextField.isHidden = true
    }
    
    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        
        successImage.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickkerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        greatTextField.isHidden = false
        thisIsTextField.isHidden = false
    }
}

