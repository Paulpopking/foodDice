//
//  ViewController.swift
//  FoodDice
//
//  Created by Xingyu Yang on 10/1/17.
//  Copyright © 2017 Xingyu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var wheelImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func rotate(_ sender: UITapGestureRecognizer) {
        UIView.animate(withDuration: 3.0, animations: ({
            self.rotateOne()
            self.rotateOne()
        }))
    }
    
    //MARK: Private functions
    private func rotateOne() {
        self.wheelImage.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
        self.wheelImage.transform = CGAffineTransform.init(rotationAngle: CGFloat(0))
    }
}
