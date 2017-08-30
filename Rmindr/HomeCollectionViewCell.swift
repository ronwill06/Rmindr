//
//  HomeCollectionViewCell.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/28/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  
}

extension HomeCollectionViewCell: HomeCollectionViewCellViewModel {
  
  var reminder: Reminder {
    get {
      return self.reminder
    }
    
    set (newValue) {
       self.reminder = newValue
    }
  }
  
  func setupCellData() {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .medium
    formatter.locale = Locale.current
    
    self.titleLabel.text = reminder.title
    
    var dateString = ""
    if let date = reminder.date {
      let reminderDate = date as Date
      dateString = formatter.string(from: reminderDate)
      subtitleLabel.text = dateString
    }
  }
}
