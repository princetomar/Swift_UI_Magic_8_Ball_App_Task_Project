//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    var imageValue = 0;

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bgImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        imageView.image = ballArray.randomElement()
        bgImageView.image = UIImage(imageLiteralResourceName: "bg")
        imageView.image = ballArray[imageValue]
    }
    

    @IBAction func askButtonPressed(_ sender: UIButton) {
//        imageView.image = ballArray.randomElement();
        imageValue = Int.random(in: 0..<5)
        imageView.image = ballArray[imageValue]
    }
}

