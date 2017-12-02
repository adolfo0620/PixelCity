//
//  PopVC.swift
//  pixel-city
//
//  Created by adolfo reyes on 12/1/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage){
        self.passedImage = image
        addDoubleTap()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
    }
    
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubled))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubled(){
        dismiss(animated: true, completion: nil)
    }
    
    
}
