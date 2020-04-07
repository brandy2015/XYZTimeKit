//
//  XYZTimeKit.swift
//  XYZTimeKit
//
//  Created by 张子豪 on 2020/4/6.
//  Copyright © 2020 张子豪. All rights reserved.
//

import UIKit
 

var XYZTime = XYZTimeKit()

public class XYZTimeKit:NSObject  {
    var Now:Date{
        return Date()
    }
    
    var NowString:String{
        return Date().XYZTimeString
    }
    
    var NowNoZoneString:String{
        return "\(Date())"
    }
    
    
    
}
