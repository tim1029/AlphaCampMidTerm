//
//  SecondViewController.swift
//  MidTerm
//
//  Created by MBPrDyson on 2016/3/28.
//  Copyright © 2016年 MBPrDyson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scollView: UIScrollView!
    @IBOutlet weak var SVLabel: UILabel!
    @IBOutlet weak var SVImage: UIImageView!
    
    var contentOfLabel:String = ""
    var nameOfImage:String = ""
    var contentOfTitle:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.scollView.delegate = self
        self.navigationItem.title = self.contentOfTitle
        SVLabel.text = self.contentOfLabel
        SVImage.image = UIImage(named: self.nameOfImage)
        
        self.scollView.contentSize = CGSize(width: UIScreen.mainScreen().bounds.width , height: UIScreen.mainScreen().bounds.height * 1.4 )
        self.scollView.addSubview(SVImage)
        self.scollView.addSubview(SVLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        print("scroll")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
