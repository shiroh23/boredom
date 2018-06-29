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

//ezzel ismeri fel a dupla kattintást, és írja le hogy hogyan reagáljon rá
extension mainController: UIGestureRecognizerDelegate {
    func handleTap(_ gesture: UITapGestureRecognizer){
        self.helloLbl.shake()
    }
}

//ezzel shake animáció érhető el
extension UILabel {
    func shake(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 3
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}

