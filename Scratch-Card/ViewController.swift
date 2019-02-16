//
//  ViewController.swift
//  Scratch-Card
//
//  Created by Jayesh Sharma on 16/02/19.
//  Copyright © 2019 CazzyTheCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewBehindScratchCard: UIView!
    
    @IBOutlet weak var scratchCard: ScratchCard!
    
    @IBOutlet weak var progressLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        scratchCard.scratchDelegate = self
        
        viewBehindScratchCard.layer.cornerRadius = 10
        viewBehindScratchCard.layer.shadowColor = UIColor.black.cgColor
        viewBehindScratchCard.layer.shadowOpacity = 1
        viewBehindScratchCard.layer.shadowOffset = CGSize.init(width: 2, height: 2)
        viewBehindScratchCard.clipsToBounds = false
        
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        scratchCard.reset()
        progressLabel.text = String.init(format: "-- %d %@ --", 0 , "%")
    }
}
extension ViewController:ScratchDelegate {
    func scratch(percentage value: Int) {

        progressLabel.text = String.init(format: "-- %d %@ --", value , "%")
       
        
    }
    
    
}
