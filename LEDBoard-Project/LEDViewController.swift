//
//  LEDViewController.swift
//  LEDBoard-Project
//
//  Created by mac on 2021/10/06.
//

import UIKit

func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }




class LEDViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    
    @IBOutlet var InputTf: UITextField!
    
    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet var ChangeColorButton: UIButton!
    
    @IBOutlet var SendButton: UIButton!
    
    @IBOutlet var InputWrap: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        InputTf.delegate = self
        outputLabel.adjustsFontSizeToFitWidth = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.InputTf.endEditing(true)
    }
    
    @IBAction func SendBtn(_ sender: UIButton) {
        outputLabel.text = InputTf.text
    }
    
    
    @IBAction func ChangeColorBtn(_ sender: UIButton) {
        self.outputLabel.textColor = getRandomColor()
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       
        self.InputTf.resignFirstResponder()
        SendBtn(SendButton)
        return true
    }
    
    
    @IBAction func isClickedTap(_ sender: UITapGestureRecognizer) {
        if InputWrap.isHidden {
            InputWrap.isHidden = false
            print("tap")
        } else {
            InputWrap.isHidden = true
        }
    }
    
}
