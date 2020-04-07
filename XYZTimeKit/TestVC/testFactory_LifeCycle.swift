//
//  testFactory_LifeCycle.swift
//  XYZTimeKit
//
//  Created by 张子豪 on 2020/4/6.
//  Copyright © 2020 张子豪. All rights reserved.
//

import UIKit
import SwiftDate

extension Date{
    func PrintX()  {
        print(self)
    }
}
extension String{
    func PrintX()  {
        print("👌👌👌👌👌")
        print(self.count)
        print(self)
    }
}


//testFactory_LifeCycle
extension testFactory{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
        
        
//        print("🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵")
//        let x = "2020-04-07 09:29:33".XYZDate()
//        print(x)
//
//        print("🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵")
//        let x2 = "20200407092933".XYZDate()
//        print(x2)
//        print(x2?.XYZDateInregion)
       
        
//        let a = Date().CurrentDateInRegion
//        print(Date().CurrentDateInRegion)
//
//        print("🐵")

//        print(a.year)
//        print(a.month)
//        print(a.day)
//        print(a.hour)
//        print(a.minute)
//        print(a.second)
       
//        print(Date().SeparateDate())
//        print("🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵")
//        let x = "2020-04-07 09:29:33".XYZDate()
//        print(x?.XYZDateInregion)
//        print("222222222222🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵")
//        let x2 = "2020-04-07".toDate(region: Date.CurrentRegion)
//        print(x2)
//        print("333333333🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵🐵")
//        let x3 = "2020-04-07 09:29:33".toDate(region: Date.CurrentRegion)
//        print(x3)
//        print(x3?.date)
        
//        let x4 = "20200407092933".toDate(Date.XYZDateStringType_AllForName, region: Date.CurrentRegion)//(region: Date.CurrentRegion)
//        print(x4)
//        print(x4?.date)
//        Date.XYZDateStringType_AllForName = "yyyyMMddHHmmss"
//        Date.XYZDateStringType_All = "yyyy-MM-dd HH:mm:ss"
//        Date.XYZDate_YearMonthDayString = "yyyyMMdd"
//        Date.XYZDate_YearMonthString = "yyyyMM"
//        Date.XYZDate_YearString = "yyyy"
//
//        Date.XYZDate_YearMonthDayString_ = "yyyy-MM-dd"
//        Date.XYZDate_YearMonthString_ = "yyyy-MM"
        
        Date.XYZDateStringType_AllForName.PrintX()
        Date.XYZDateStringType_All.PrintX()
        Date.XYZDate_YearMonthDayString.PrintX()
        Date.XYZDate_YearMonthString.PrintX()
        Date.XYZDate_YearString.PrintX()
        Date.XYZDate_YearMonthDayString_.PrintX()
        Date.XYZDate_YearMonthString_.PrintX()
        
//        print(Date().monthDays)
//        print("剩余天数")
//        print(Date().CountDaysEndToMonth)
//        print(Date().CurrentDateInRegion)
//        print(Date().TestDate1)
//        print(Date().TestDate1.XYZTimeString)
//
//        print(Date().TestDate2)
//        print(Date().TestDate2.XYZTimeString)
//
//        print("嘻嘻😬")
//        Date().NextMonStart.PrintX()
//        print(Date().NextMonRegion)
//
////         print(Date().PreviousMonthRegion.date.PreviousMonthRegion)
////
////        print(Date().PreviousMonthRegion.date.PreviousMonthRegion.monthDays)//3月
////        print(Date().PreviousMonthRegion.monthDays)//3月
////        print(Date().XYZDateInregion.monthDays)//现在4月
////        print(Date().NextMonthRegion.monthDays)//5月
//
//
//        print(Date().PreMonRegion.date.PreMonRegion.date.monthDays)//2月
//        print(Date().PreMonRegion.date.monthDays)//3月
//        print(Date().monthDays)//4月
//        print(Date().XYZDateInregion.date.monthDays)//现在4月
//        print(Date().NextMonRegion.date.monthDays)//5月
        
        // All dates includes timezone, calendar and locales!
//        // Create from string
//        let rome = Region(calendar: Calendars.gregorian, zone: Zones.europeRome, locale: Locales.italian)
//        let date1 = DateInRegion("2010-01-01 00:00:00", region: rome)!
//        
//        print(rome)
//        
//        print(date1)
//         print(date1.date)
//        
//        
//        let dateX = Date()
//        print("🐵🐵🐵🐵🐵")
//        print(dateX)
//        
//        let Shanghai = Region(calendar: Calendars.gregorian, zone: Zones.current, locale: Locales.current)
//        let Shanghaidate1 = DateInRegion("2010-01-01 00:00:00", region: Shanghai)!
//        
//        print(Shanghai)
//         print(Shanghaidate1)
//        
//        
//       
//        
//        let x = DateInRegion(Shanghaidate1.date, region: rome)
//        
//        print("罗马时间")
//        print(x)
//         print("上海时间")
//        print(Shanghaidate1)
//        print("刺客")
//        
//        let t = Shanghaidate1.dateAt(.tomorrow)
//        print(t)
//        
//        print("♥️♥️♥️♥️♥️♥️")
//        print(t.date)
//        
//        
//        print("测科2")
//        print(Shanghaidate1.date.dateAt(.endOfDay))
//        
//        print("👌👌👌👌👌👌")
//        print(Date())
//        print(DateInRegion().dateAt(.endOfDay))
//        
//        
//        
//        // Create date from intervals
//        let _ = DateInRegion(seconds: 39940, region: rome)
//        let _ = DateInRegion(milliseconds: 5000, region: rome)
//        
//        // Date from components
//        let _ = DateInRegion(components: {
//            $0.year = 2001
//            $0.month = 9
//            $0.day = 11
//            $0.hour = 12
//            $0.minute = 0
//        }, region: rome)
//        let _ = DateInRegion(year: 2001, month: 1, day: 5, hour: 23, minute: 30, second: 0, region: rome)
//        
        // Random date generation with/without bounds
//        let _ = DateInRegion.randomDate(region: rome)
//        let _ = DateInRegion.randomDate(withinDaysBeforeToday: 5)
//        let _ = DateInRegion.randomDates(count: 50, between: lowerLimitDate, and: upperLimitDate, region: rome)
    }
}
