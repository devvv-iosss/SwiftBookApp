//
//  MenuViewController.swift
//  SwiftBookApp
//
//  Created by Vladimir Syleimanov on 23.04.2021.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var closeButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
