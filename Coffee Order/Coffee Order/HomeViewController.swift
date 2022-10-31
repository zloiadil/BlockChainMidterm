//
//  HomeViewController.swift
//  Coffee Order
//
//  Created by Адиль Бектурсунов on 30.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var homeImage: UIImageView!
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var homeDiscription: UILabel!
    @IBOutlet weak var homeOrderButton: UIButton!
    
    var sproduct: productList! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeImage.image = sproduct.productImage
        homeLabel.text = sproduct.productName
        homeDiscription.text = sproduct.prodctdescription
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
