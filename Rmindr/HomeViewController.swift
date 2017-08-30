//
//  HomeViewController.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/28/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import UIKit

struct ReuseIdentifiers {
  static let HomeCollectionViewCell = "HomeCollectionViewCell"
}

class HomeViewController: UIViewController {
  
  @IBOutlet weak var homeCollectionView: UICollectionView!
  var homeViewModel: HomeViewModel?

  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  @IBAction func addReminder(_ sender: UIBarButtonItem) {
    
  }

}

extension HomeViewController: UICollectionViewDataSource {
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return self.reminders.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.HomeCollectionViewCell, for: indexPath)
      as? HomeCollectionViewCell {
      
      return cell
    }
    
    return UICollectionViewCell()
  }
  
}

extension HomeViewController: UICollectionViewDelegate {
  
}

extension HomeViewController: HomeViewModel {}
