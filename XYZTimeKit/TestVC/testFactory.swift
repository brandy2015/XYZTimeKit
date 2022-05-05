//
//  ViewController.swift
//  XYZTimeKit
//
//  Created by 张子豪 on 2020/4/5.
//  Copyright © 2020 张子豪. All rights reserved.
//

import UIKit


class testFactory: UIViewController {
   
    @IBAction func BTN(_ sender: Any) {
//        print(XYZTime.NowString)
//
//
//
//        print("🐒🐒🐒🐒🐒🐒🐒")
//        print(XYZTime.NowNoZoneString)
        
//        print(Date().StartOfDay)
//        print(Date().StartOfDay.XYZTimeString)
        
        
//        print("明天")
//      
//        
//        print(Date().TestDate1)
//        print(Date().TestDate1.XYZTimeString)
//        
//        print(Date().TestDate2)
//        print(Date().TestDate2.XYZTimeString)
        
        
        
        
        PresentVC(With: "PickerVC", PresentStyle: .overCurrentContext, TransitionStyle: .crossDissolve)
    }
}



public extension UIViewController {
    func Dis()  {  DispatchQueue.main.async {self.dismiss(animated: true, completion: nil)}}
    
    func PresentVC(With id:String,StoryboardName:String = "Main",bundle:Bundle? = nil,PresentStyle:UIModalPresentationStyle = .fullScreen,TransitionStyle:UIModalTransitionStyle = .crossDissolve) {
        let NAV = UIStoryboard(name: StoryboardName, bundle:nil).instantiateViewController(withIdentifier: id)
        NAV.modalPresentationStyle = PresentStyle
        NAV.modalTransitionStyle = TransitionStyle
        DispatchQueue.main.async {self.present(NAV, animated: true, completion: nil)}
    }
    
    func PresentWith(With VC:UIViewController,id:String,StoryboardName:String = "Main",bundle:Bundle? = nil,PresentStyle:UIModalPresentationStyle = .fullScreen,TransitionStyle:UIModalTransitionStyle = .crossDissolve) {
        let NAV = UIStoryboard(name: StoryboardName, bundle:bundle).instantiateViewController(withIdentifier: id)
        NAV.modalPresentationStyle = PresentStyle
        NAV.modalTransitionStyle = TransitionStyle
        DispatchQueue.main.async {VC.present(NAV, animated: true, completion: nil)}
    }
    
      func PresentVCBack(With id:String,StoryboardName:String = "Main",bundle:Bundle? = nil,PresentStyle:UIModalPresentationStyle = .fullScreen,TransitionStyle:UIModalTransitionStyle = .crossDissolve,completion: (() -> Void)? = nil ,BackVC:@escaping ((UIViewController?) -> Void))  {
        let NAV = UIStoryboard(name: StoryboardName, bundle:bundle).instantiateViewController(withIdentifier: id);BackVC(NAV)
        NAV.modalPresentationStyle = PresentStyle
        NAV.modalTransitionStyle = TransitionStyle
        DispatchQueue.main.async {self.present(NAV, animated: true, completion: completion)}
    }
    
}
public extension UIView{
    func CornerRadius(cornerRadius:CGFloat = 20) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = cornerRadius
    }
}
