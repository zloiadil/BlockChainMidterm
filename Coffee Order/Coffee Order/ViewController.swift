//
//  ViewController.swift
//  Coffee Order
//
//  Created by Адиль Бектурсунов on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var orderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coffeeGif = UIImage.gifImageWithName("coffeeGif")
        imageView.image = coffeeGif
        
        orderButton.layer.cornerRadius = orderButton.frame.size.width / 2
        orderButton.layer.masksToBounds = true
    }


}

