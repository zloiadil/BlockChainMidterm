//
//  CongratualationsViewController.swift
//  Coffee Order
//
//  Created by Адиль Бектурсунов on 31.10.2022.
//

import UIKit

class CongratualationsViewController: UIViewController {
    @IBOutlet weak var congratulationsLabel: UILabel!
    
    @IBOutlet weak var congratulationsImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let gifTwo = UIImage.gifImageWithName("gifTwo")
        congratulationsImage.image = gifTwo
        
        // Do any additional setup after loading the view.
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
