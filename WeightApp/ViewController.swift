//
//  ViewController.swift
//  WeightApp
//
//  Created by Alexis  on 12/18/17.
//  Copyright © 2017 Alexis . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var forceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first{
            if #available(iOS 9.0, *){
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available{
                    if touch.force >= touch.maximumPossibleForce{
                        forceLabel.text = "385 grams"
                    }else{
                        let force = touch.force / touch.maximumPossibleForce
                        let grams = force * 385
                        let roundGrams = Int(grams)
                        forceLabel.text = "\(roundGrams) grams"
                    }
                    
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        forceLabel.text = "0 gram/s";
    }


}

