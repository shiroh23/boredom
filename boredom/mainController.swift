//
//  ViewController.swift
//  boredom
//
//  Created by Horváth Richárd on 2018. 06. 28..
//  Copyright © 2018. makeyourlifeeasierproducts. All rights reserved.
//

import UIKit

class mainController: UIViewController {

    @IBOutlet weak var helloLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(mainController.handleTap(_:)))
        tapGR.delegate = self
        tapGR.numberOfTapsRequired = 2
        view.addGestureRecognizer(tapGR)
    }
    
    

}

extension mainController: UIGestureRecognizerDelegate {
    func handleTap(_ gesture: UITapGestureRecognizer){
        print("doubletapped")
    }
}

