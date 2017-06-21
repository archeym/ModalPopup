//
//  ViewController.swift
//  ModalPopup
//
//  Created by Arkadijs Makarenko on 21/06/2017.
//  Copyright © 2017 ArchieApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var popupView: UIView!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var sasha: UIImageView!
    
    @IBOutlet weak var killImage: UIImageView!
    @IBOutlet weak var centerPopupConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.layer.cornerRadius = 10
        popupView.layer.masksToBounds = true
        killImage.alpha = 0.9
        

    }
    @IBAction func showPopup(_ sender: Any) {
        centerPopupConstraint.constant = 0
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        UIView.animate(withDuration: 0.3, animations: {
            self.sasha.alpha = 1
        })
    }

    @IBAction func done(_ sender: Any) {
        centerPopupConstraint.constant = -350
        UIView.animate(withDuration: 0.2, animations: {
            self.view.layoutIfNeeded()
            self.sasha.alpha = 1
        })
    }
    
}

