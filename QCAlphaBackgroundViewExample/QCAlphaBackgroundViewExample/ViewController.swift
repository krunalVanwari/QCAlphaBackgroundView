//
//  ViewController.swift
//  QCAlphaBackgroundViewExample
//
//  Created by Qurious Click on 27/04/22.
//

import UIKit
import QCAlphaBackgroundView

class ViewController: UIViewController {

    @IBOutlet weak var alphaBGView:QCAlphaBackgroundView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func viewActionChangeTap(_ sender:Any) {
        
        switch alphaBGView.backgroundTheme {
        case .light:
            self.alphaBGView.backgroundTheme = .dark
        case .dark:
            self.alphaBGView.backgroundTheme = .custom(firstColor: .red.withAlphaComponent(0.5), secondColor: .orange.withAlphaComponent(0.5))
        case .custom(firstColor: _, secondColor: _):
            self.alphaBGView.backgroundTheme = .light
        }
        
    }

}

