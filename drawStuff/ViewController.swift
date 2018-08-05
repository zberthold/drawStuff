//
//  ViewController.swift
//  drawStuff
//
//  Created by Zoe Berthold on 7/22/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var pixelBlock: UILabel!
    var labelsArray = [UILabel]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("hey")
        // Do any additional setup after loading the view, typically from a nib.
        labelsArray.append(testLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTappedSquare(_ sender: UITapGestureRecognizer) {
//        if blueSquare.frame.contains(sender.location(in: blueSquare)) {
//            var point = sender.location(in: blueSquare)
//            pixelBlock.center = point
//            print(point)
//            //pixelBlock.center = sender.location(in: blueSquare)
//        }
//        if blueSquare.frame.contains(sender.location(ofTouch: 0, in: blueSquare)){
//            print("idk what this does")
//        }
        for label in labelsArray {
            if label.frame.contains(sender.location(in: blueSquare)){
                label.text = "O"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            var location = touch.location(in: blueSquare)
            print(location)
            location.x += 37.5
            location.y += 183.5
            pixelBlock.center = location
            print(pixelBlock.center)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            var location = touch.location(in: blueSquare)
            pixelBlock.center = location
        }
    }
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for touch in touches {
//            print("yup")
//        }
//    }

}

