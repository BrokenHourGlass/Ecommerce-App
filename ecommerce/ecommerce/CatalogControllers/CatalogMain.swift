//
//  CatalogMain.swift
//  ecommerce
//
//  Created by Liban Abdinur on 7/5/22.
//

import UIKit

class CatalogMain: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var catagoryImgs = ["GameSystem", "headphone", "Keyboard", "Nokia", "PC Monitor","gold macbook 2020"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catagoryImgs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryViewCells
        
        cell1.imgOne.image = UIImage(named: catagoryImgs[indexPath.row])
        
        
        return cell1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row{
            
        case 0:
            let storyObject = UIStoryboard(name: "Main", bundle: nil)
            let gameScreen = storyObject.instantiateViewController(withIdentifier: "games") as! GameViewController
            self.present(gameScreen, animated: true,completion: nil)
            
            
        case 1:
            let storyObject2 = UIStoryboard(name: "Main", bundle: nil)
            let headphonescreen = storyObject2.instantiateViewController(withIdentifier: "headphones") as! HeadPhonesViewController
            self.present(headphonescreen, animated: true,completion: nil)
            
            
        case 2:
            let storyObject3 = UIStoryboard(name: "Main", bundle: nil)
            let keyscreen = storyObject3.instantiateViewController(withIdentifier: "keyboard") as! KeyboardsViewController
            self.present(keyscreen, animated: true, completion: nil)
            
        case 3:
            let storyObject4 = UIStoryboard(name: "Main", bundle: nil)
            let cellScreen = storyObject4.instantiateViewController(withIdentifier: "cellphone") as! CellPhoneViewController
            self.present(cellScreen, animated: true,completion: nil)
       
        case 4:
            let storyobject5 = UIStoryboard(name: "Main", bundle: nil)
            let monitorScreen = storyobject5.instantiateViewController(withIdentifier: "Monitors") as! MonitorsViewController
            self.present(monitorScreen, animated: true, completion: nil)
            
        case 5:
            let storyobject6 = UIStoryboard(name: "Main", bundle: nil)
            let lapscreen = storyobject6.instantiateViewController(withIdentifier: "laptops") as! LaptopViewController
            self.present(lapscreen, animated: true, completion: nil)
            
        default:
            print()
            
            
            
        }
        
    
    }
    
    
    
    

   

    

}
