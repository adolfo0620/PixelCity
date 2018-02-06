//
//  PopVC.swift
//  pixel-city
//
//  Created by adolfo reyes on 12/1/17.
//  Copyright © 2017 adolfo reyes. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var photoImgLbl: UILabel!
    @IBOutlet weak var popImageView: UIImageView!
    var passedImage: UIImage!
    var passedImageDetail: String!
    
    func initData(forImage image: UIImage, withDetail detail: String){
        self.passedImage = image
        self.passedImageDetail = detail
        addDoubleTap()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        photoImgLbl.text = " \(passedImageDetail!) "
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
