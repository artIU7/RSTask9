//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Артем Стратиенко
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class GaleryController: UIViewController {
    var tabBarTag: Bool = true
    
    var collectionView: UICollectionView!
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Galery"
        //self.configurationLayout()
        self.collectionView.dataSource = self
        // set the delegate
        self.collectionView.delegate = self
        // register the standard cell
        self.collectionView.register(GaleryCell.self, forCellWithReuseIdentifier: GaleryCell.cellID)
        // bounce at the bottom of the collection view
        self.collectionView.alwaysBounceVertical = true
        // set the background to be white
        self.collectionView.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    func configurationLayout() {
        self.view.backgroundColor = .black
    }
    
    override func loadView() {
        // create a layout to be used
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        // make sure that there is a slightly larger gap at the top of each row
        //layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        // set a standard item size of 60 * 60
        layout.itemSize = CGSize(width: 200, height: 200)
        // the layout scrolls horizontally
        layout.scrollDirection = .vertical
        // set the frame and layout
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //collectionView.translatesAutoresizingMaskIntoConstraints = false
        // set the view to be this UICollectionView
        self.view = collectionView
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Constraints
   
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           if tabBarTag == true {
            self.tabBarController?.tabBar.tintColor =  #colorLiteral(red: 0.8202971374, green: 0.01842437312, blue: 0.1639236212, alpha: 1)
           } else {
             self.tabBarController?.tabBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
           }
        }
}
extension GaleryController  :  UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      //
    }
}
extension GaleryController  :  UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FillingData.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GaleryCell.cellID, for: indexPath) as! GaleryCell
        cell.setupCell(indexCell: indexPath.row)
        return cell
    }
    
}
