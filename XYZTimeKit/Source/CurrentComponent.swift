//
//  CurrentComponent.swift
//  XYZTimeKit
//
//  Created by zhangzihao on 2022/7/17.
//  Copyright © 2022 张子豪. All rights reserved.
//
 
import Foundation

public extension Date {
  var year: Int {
    return Calendar(identifier: .gregorian).component(.year, from: self)
  }
  
  var month: Int {
    return Calendar(identifier: .gregorian).component(.month, from: self)
  }
}
