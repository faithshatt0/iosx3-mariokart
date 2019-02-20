//
//  ViewController.swift
//  mario_kart
//
//  Created by Faith Shatto on 2/20/19.
//  Copyright © 2019 Faith Shatto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var kart_0: UIImageView!
    @IBOutlet weak var kart_1: UIImageView!
    @IBOutlet weak var kart_2: UIImageView!
    @IBOutlet weak var kart_3: UIImageView!
    @IBOutlet weak var kart_4: UIImageView!
    
    var startingPointKartView0 = CGPoint()
    var startingPointKartView1 = CGPoint()
    var startingPointKartView2 = CGPoint()
    var startingPointKartView3 = CGPoint()
    var startingPointKartView4 = CGPoint()

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        
        kartView.center = location
    }
    
    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func didRotateKart(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapKart(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }
    }
    
    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8) {
            self.kart_0.center = self.startingPointKartView0
            self.kart_1.center = self.startingPointKartView1
            self.kart_2.center = self.startingPointKartView2
            self.kart_3.center = self.startingPointKartView3
            self.kart_4.center = self.startingPointKartView4
            
            self.kart_0.transform = CGAffineTransform.identity
            self.kart_1.transform = CGAffineTransform.identity
            self.kart_2.transform = CGAffineTransform.identity
            self.kart_3.transform = CGAffineTransform.identity
            self.kart_4.transform = CGAffineTransform.identity
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startingPointKartView0 = kart_0.center
        startingPointKartView1 = kart_1.center
        startingPointKartView2 = kart_2.center
        startingPointKartView3 = kart_3.center
        startingPointKartView4 = kart_4.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

