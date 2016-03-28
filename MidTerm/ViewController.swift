//
//  ViewController.swift
//  MidTerm
//
//  Created by MBPrDyson on 2016/3/28.
//  Copyright © 2016年 MBPrDyson. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var showTextField: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
//        self.showLabel.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addSign(sender: AnyObject) {
        if  checkInputIsNotEmpty() && checkLine(){
            self.showTextField.text = self.showTextField.text! + self.textField.text! + "\n"
            self.textField.text = ""
            self.count += 1
            self.resultLabel.text = ""
        }
        
    }
    
    func checkInputIsNotEmpty() -> Bool{
        var result = true
        if self.textField.text == "" {
            result = false
            self.resultLabel.text = "名字不能留白"
        }
        
        return result
    }
    
    func checkLine() -> Bool{
        var result = true
        if self.count >= 3 {
            result = false
            self.resultLabel.text = "只能簽三筆"
        }
        
        return result
    }
}

