//
//  ViewController.swift
//  Date-Picker-TextBook
//
//  Created by D7703_02 on 2018. 4. 11..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCurrentTime: UILabel!
    
    @IBOutlet weak var lblPickerTime: UILabel!
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(timer) in self.updateTime()})
    }

    @IBAction func ChangePick(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "YYYY년 MM월 dd일 HH : mm : ss a EEE"
        lblPickerTime.text = formatter.string(from: datePickerView.date)
    }
    
    
    @objc func updateTime() {
        let date1 = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "yyyy-MM-dd a HH:mm:ss EEE"
        let time1 = formatter.string(from: date1)
        lblCurrentTime.text = time1
    }

}

