//
//  XYZDatePicker.swift
//  TestPresentTime
//
//  Created by zhangzihao on 2022/5/3.
//

import UIKit
  

@objc public class XYZDatePicker_Short: UIPickerView  {

    public enum Component: Int {
        case Month = 0
        case Year = 1
    }

    let LABEL_TAG = 43
    let bigRowCount = 1000
    let numberOfComponentsRequired = 2
    
    let months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
    var years: [String] {
        get {
            var years: [String] = [String]()

            for i in minYear...maxYear {
                years.append("\(i)")
            }

            return years;
        }
    }

    var bigRowMonthsCount: Int {
        get {
            return bigRowCount * months.count
        }
    }

    var bigRowYearsCount: Int {
        get {
            return bigRowCount * years.count
        }
    }

    var monthSelectedTextColor: UIColor?
    var monthTextColor: UIColor?
    var yearSelectedTextColor: UIColor?
    var yearTextColor: UIColor?
    var monthSelectedFont: UIFont?
    var monthFont: UIFont?
    var yearSelectedFont: UIFont?
    var yearFont: UIFont?

    let rowHeight: NSInteger = 44

    /**
     Will be returned in user's current TimeZone settings
    **/
    public var date: Date {
        get {
            let month = self.months[selectedRow(inComponent: Component.Month.rawValue) % months.count]
            let year = self.years[selectedRow(inComponent: Component.Year.rawValue) % years.count]
            let formatter = DateFormatter()
            formatter.dateFormat = "MM yyyy"
            return formatter.date(from: "\(month) \(year)")!
        }
    }

    var minYear: Int!
    var maxYear: Int!

    override init(frame: CGRect) {
        super.init(frame: frame)
        loadDefaultParameters()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadDefaultParameters()
    }

    public override func awakeFromNib() {
        super.awakeFromNib()
        loadDefaultParameters()
    }

    func loadDefaultParameters() {
        minYear = Calendar.current.dateComponents([.year], from: Date()).year
        maxYear = minYear! + 10

        self.delegate = self
        self.dataSource = self

        monthSelectedTextColor = .blue
        monthTextColor = .black

        yearSelectedTextColor = .blue
        yearTextColor = .black

        monthSelectedFont = .boldSystemFont(ofSize: 17)
        monthFont = .boldSystemFont(ofSize: 17)

        yearSelectedFont = .boldSystemFont(ofSize: 17)
        yearFont = .boldSystemFont(ofSize: 17)
    }


    func setup(minYear: NSInteger, andMaxYear maxYear: NSInteger) {
        self.minYear = minYear

        if maxYear > minYear {
            self.maxYear = maxYear
        } else {
            self.maxYear = minYear + 10
        }
    }

    func selectToday() {
        selectRow(todayIndexPath.row, inComponent: Component.Month.rawValue, animated: false)
        selectRow(todayIndexPath.section, inComponent: Component.Year.rawValue, animated: false)
    }


    var todayIndexPath: NSIndexPath {
        get {
            var row = 0.0
            var section = 0.0

            for cellMonth in months {
                if cellMonth == currentMonthName {
                    row = Double(months.firstIndex(of: cellMonth)!)
                    row = row + Double(bigRowMonthsCount / 2)
                    break
                }
            }

            for cellYear in years {
                if cellYear == currentYearName {
                    section = Double(years.firstIndex(of: cellYear)!)
                    section = section + Double(bigRowYearsCount / 2)
                    break
                }
            }

            return NSIndexPath(row: Int(row), section: Int(section))
        }
    }

    var currentMonthName: String {
        get {
            let formatter = DateFormatter()
            let locale = Locale.init(identifier: "en_US")
            formatter.locale = locale
            formatter.dateFormat = "MM"
            return formatter.string(from: Date())
        }
    }

    var currentYearName: String {
        get {
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy"
            return formatter.string(from: Date())
        }
    }


    func selectedColorForComponent(component: NSInteger) -> UIColor {
        if component == Component.Month.rawValue {
            return monthSelectedTextColor!
        }
        return yearSelectedTextColor!
    }

    func colorForComponent(component: NSInteger) -> UIColor {
        if component == Component.Month.rawValue {
            return monthTextColor!
        }
        return yearTextColor!
    }


    func selectedFontForComponent(component: NSInteger) -> UIFont {
        if component == Component.Month.rawValue {
            return monthSelectedFont!
        }
        return yearSelectedFont!
    }

    func fontForComponent(component: NSInteger) -> UIFont {
        if component == Component.Month.rawValue {
            return monthFont!
        }
        return yearFont!
    }


    func titleForRow(row: Int, forComponent component: Int) -> String? {
        if component == Component.Month.rawValue {
            return self.months[row % self.months.count]
        }
        return self.years[row % self.years.count]
    }


    func labelForComponent(component: NSInteger) -> UILabel {
        let frame = CGRect(x: 0.0, y: 0.0, width: bounds.size.width, height: CGFloat(rowHeight))
        let label = UILabel(frame: frame)
        label.textAlignment = .center
        label.backgroundColor = .clear
        label.isUserInteractionEnabled = false
        label.tag = LABEL_TAG
        return label
    }
}

extension XYZDatePicker_Short: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return numberOfComponentsRequired
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == Component.Month.rawValue) {
            
           
            
//            print( months[component],bigRowMonthsCount)
            return bigRowMonthsCount
            
            
        } else {
            
//            print(years[component],bigRowYearsCount)
            return bigRowYearsCount
        }
    }

    public func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return self.bounds.size.width / CGFloat(numberOfComponentsRequired)
    }

    public func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var selected = false

        if component == Component.Month.rawValue {
            let monthName = self.months[(row % self.months.count)]
            if monthName == currentMonthName {
                selected = true
            }
        } else {
            let yearName = self.years[(row % self.years.count)]
            if yearName == currentYearName {
                selected = true
            }
        }

        var returnView: UILabel
        if view?.tag == LABEL_TAG {
            returnView = view as! UILabel
        } else {
            returnView = labelForComponent(component: component)
        }

        returnView.font = selected ? selectedFontForComponent(component: component) : fontForComponent(component: component)
        returnView.textColor = selected ? selectedColorForComponent(component: component) : colorForComponent(component: component)

        returnView.text = titleForRow(row: row, forComponent: component)

        return returnView
    }

    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return CGFloat(rowHeight)
    }

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    

}
