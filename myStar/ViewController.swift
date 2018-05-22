//
//  ViewController.swift
//  myStar
//
//  Created by Apple on 2018/5/21.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var starTextField: UITextField!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    //tap收鍵盤///
    @IBAction func tapCloseKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    //return收鍵盤///
    @IBAction func closeKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func pairButton(_ sender: Any) {
       
        if starTextField.text == "Aquarius" {
            if genderSegmentedControl.selectedSegmentIndex == 0 {
                resultImageView.image = UIImage(named: "yes")
            } else {
                resultImageView.image = UIImage(named: "no")
            }
        }else {
            resultImageView.image = UIImage(named: "no")
        }
         view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

