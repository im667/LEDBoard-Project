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


class LEDViewController: UIViewController {

    @IBOutlet var InputTf: UITextField!
    
    @IBOutlet var outputLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func SendBtn(_ sender: UIButton) {
        outputLabel.text = InputTf.text
    }
    
    
    @IBAction func ChangeColorBtn(_ sender: UIButton) {
        self.outputLabel.textColor = getRandomColor()
    }
    
}
