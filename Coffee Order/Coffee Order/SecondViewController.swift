//
//  SecondViewController.swift
//  Coffee Order
//
//  Created by Адиль Бектурсунов on 30.10.2022.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var statusButton: UIBarButtonItem!
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    var itemList = [productList]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        

        let item1:productList = productList(productImage: UIImage(named:"coffeeOne")!, productName: "Molinari Qualità Rosso", prodctdescription: "Molinari is an Italian roasting company that began its history in the study before last. Now Molinari exports its product to almost all countries, gaining worldwide fame. The company's products consist of industrial Italian coffee and occupy the premium coffee market segment.")
        itemList.append(item1)
        let item2:productList = productList(productImage: UIImage(named: "coffeeTwo")!, productName: "Blasercafé Lilla e Rose", prodctdescription: "The Swiss company Blasercafé consists of two parts. The first, Blaser Trading AG, deals with the purchase and sale of green coffee, and the second, Blasercafé AG, directly roasts. In addition to the Specialty varieties, Blasercafé offers a wide range of coffee bouquets that can satisfy the needs of even sophisticated coffee lovers.")
        itemList.append(item2)
        let item3:productList = productList(productImage: UIImage(named: "coffeeThree")!, productName: "Julius Meinl Wiener Mokka", prodctdescription: "The history of the brand Julius Meinl (Julius Meinl) began in the second half of the 19th century. The company became the ancestor of the famous Viennese coffee culture, to this day recreating the atmosphere of old Vienna in its coffee houses. The company's logo (silhouette of a Mauritanian) is recognizable all over the world, it is a tribute to the historical influence of the Ottoman Empire, which brought coffee to Austria.")
        itemList.append(item3)
        let item4:productList = productList(productImage: UIImage(named: "coffeeFour")!, productName: "Lavazza Qualità Oro", prodctdescription: "Lavazza is the leader in the Italian coffee market and one of the most popular brands in the global coffee industry. Lavazza imports coffee from all countries involved in its cultivation, and, in addition to its own sales, cooperates with such global coffee chains as Starbucks and Caribou Coffee.")
        itemList.append(item4)
        
    }
    
}
    
extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 2
        let paddingWidth = 20 * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - paddingWidth
        let widthPerItem = availableWidth / itemsPerRow
        return CGSize(width: widthPerItem, height: widthPerItem)
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = itemList[indexPath.row].productImage
        cell.itemLabel.text = itemList[indexPath.row].productName
        cell.myImageView.layer.cornerRadius = 60
        cell.orderButton.tag = indexPath.row
        cell.orderButton.addTarget(self, action: #selector(viewdetail), for: .touchUpInside)
        return cell
    }
    
    
        @objc func viewdetail(sender: UIButton)
        
        {
            let indexpath1 = IndexPath(row: sender.tag, section: 0)
            let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            home.sproduct = itemList[indexpath1.row]
            self.navigationController?.pushViewController(home, animated: true)
            
            
        }
        
        
        
    
}
