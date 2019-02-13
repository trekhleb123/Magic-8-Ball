//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Alona Trekhlib on 2/11/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        randomImageGenerator()
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        randomImageGenerator()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomImageGenerator()
    }
    
    func randomImageGenerator() {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

