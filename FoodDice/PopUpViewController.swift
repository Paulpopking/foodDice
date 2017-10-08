//
//  PopUpViewController.swift
//  FoodDice
//
//  Created by Xingyu Yang on 10/5/17.
//  Copyright © 2017 Xingyu Yang. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var foodTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue.withAlphaComponent(0.8)
        
        self.presentFood()
        
        self.showAnimation()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
        self.removeAnimation()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private functions
    //Functions to show animation
    private func showAnimation() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    private func removeAnimation() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: {(finished: Bool) in
            if (finished) {
                self.view.removeFromSuperview()
            }
        })
    }
    
    private func presentFood() {
        let food = arc4random_uniform(5)
        var foodString = ""
        switch food {
        case 0:
            foodString = "Panda Express"
        case 1:
            foodString = "Tasty Pot"
        case 2:
            foodString = "Noodle Magic"
        case 3:
            foodString = "Five Guys"
        case 4:
            foodString = "Sushi Ki"
        default:
            foodString = "Error"
        }
        
        //Show food name
        foodTextField.text = foodString
    }
}
