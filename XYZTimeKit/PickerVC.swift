//
//  PickerVC.swift
//  TestPresentTime
//
//  Created by zhangzihao on 2022/5/3.
//

import UIKit

class PickerVC: UIViewController {

    @IBOutlet weak var DatePickerViewX: XYZDatePicker_Short!
    
    @IBOutlet weak var BGView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BGView.CornerRadius(cornerRadius: 20)
    }
    
    @IBAction func CancelBTN(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    @IBAction func ConfirmBTN(_ sender: Any) {
        
        
        print(DatePickerViewX.date)
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
