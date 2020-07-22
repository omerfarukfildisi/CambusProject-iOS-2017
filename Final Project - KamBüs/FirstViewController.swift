//
//  FirstViewController.swift
//  Final Project - KamBüs
//
//  Created by Ömer Faruk Fildişi on 13.05.2018.
//  Copyright © 2018 Ömer Faruk Fildişi / Arda Zafer İbin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var ptgUniversities: [UIButton]!
    
    @IBOutlet weak var btnCurrent: UIButton!
    @IBOutlet weak var btnPTG: UIButton!
    
    @IBOutlet var curUniversities: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func toggleMenu(_ sender : [UIButton]){
        sender.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations:{
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectionHandler(_ sender: UIButton) {
        if sender.tag == 0{
            toggleMenu(curUniversities)
        }else if sender.tag == 1{
            toggleMenu(ptgUniversities)

        }

        
    }
    
    @IBAction func uniTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            btnCurrent.setTitle(sender.currentTitle, for: .normal)

            toggleMenu(curUniversities)

        }
        if sender.tag == 1 {
            btnPTG.setTitle(sender.currentTitle, for: .normal)

            toggleMenu(ptgUniversities)
        }
    }

 

}
