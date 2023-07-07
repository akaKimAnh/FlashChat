//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        let titleText = "⚡️FlashChat"
        var chartIndex = 0.0
        for title in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * chartIndex, repeats: false) { Timer in
                self.titleLabel.text?.append(title)
            }
            
            chartIndex += 1
        }
       
    }
    

}
