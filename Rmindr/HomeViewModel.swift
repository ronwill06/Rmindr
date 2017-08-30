//
//  HomeViewModel.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/28/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import Foundation

protocol HomeViewModel {
  var reminders: [Reminder] { get }
}

extension HomeViewModel {
  
  var reminders: [Reminder] {
    get {
      return DataManager.retrieveReminders()
    }
  }
}
