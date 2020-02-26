//
//  ViewController.swift
//  PickerViewApp
//
//  Created by 503 on 2020/02/26.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    var subject=[
        "java","python","Node.js","Oracle","MyBatis"
    ]
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var la_title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        //피커뷰와 델리게이트, 데이터소스 연결'
        picker.dataSource = self
        picker.delegate = self
        
    }
   
   // how many
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return subject.count
    }
    
    //몇쌍씩 보여줄지
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //what show
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        subject[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 70
    }
    
    //선택시 처리할 로직
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //라밸에 출력
        la_title.text = subject[row]
    }
}

