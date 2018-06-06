//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Derek Sylvester on 25/05/2018.
//  Copyright © 2018 Derek Sylvester. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        changeBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeBallImage()
    }
    
    func changeBallImage(){
        
        imageView.image = UIImage(named: ballArray[getNextImageNumber()])
    }
    
    func getNextImageNumber() -> Int {
        
        return getRandomInt(upper: ballArray.count)
    }
    
    func getRandomInt(upper: Int) -> Int {
        
        return Int(arc4random_uniform(UInt32(upper)))
    }
}

