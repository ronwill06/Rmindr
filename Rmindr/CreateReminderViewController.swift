//
//  CreateReminderViewController.swift
//  Rmindr
//
//  Created by Williams, Rondale on 8/29/17.
//  Copyright © 2017 No Comment. All rights reserved.
//

import UIKit

class CreateReminderViewController: UIViewController {
  
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var titleTextField: UITextField!
  var datePicker: UIDatePicker?
  
  var reminder: Reminder?
  
  @IBAction func openDatePicker(_ sender: Any) {
    datePicker = UIDatePicker(frame: CGRect(x: 0.0, y: 0.0, width: self.view.bounds.size.width, height: 40.0))
    datePicker?.datePickerMode = .dateAndTime
    datePicker?.isHidden = false
    datePicker?.date = Date()
    datePicker?.addTarget(self, action: #selector(getReminderDate), for: .valueChanged)
    if let datePicker = self.datePicker {
      view.addSubview(datePicker)
    }
  }
  
  func getReminderDate(date: Date) {
    reminder?.date = date as NSDate
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .medium
    formatter.amSymbol = "AM"
    formatter.pmSymbol = "PM"
    
    if let date = reminder?.date {
      let reminderDate = date as Date
      let dateString = formatter.string(from: reminderDate)
      self.dateLabel.text = dateString
    }
    
  }
}

extension CreateReminderViewController: UITextFieldDelegate {
  func textFieldDidEndEditing(_ textField: UITextField) {
    reminder?.title = textField.text
  }
}
