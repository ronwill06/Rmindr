//
//  HomeCollectionViewCellViewModel.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/29/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import Foundation

protocol HomeCollectionViewCellViewModel {
  var reminder: Reminder { get set }
  
  func setupCellData()
}
