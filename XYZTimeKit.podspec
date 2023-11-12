#
#  Be sure to run `pod spec lint SoHow.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

    s.name         = "XYZTimeKit"
    s.version      = "3.1.3"
    s.summary      = "Deal with Time."
    s.description  = <<-DESC
        Private pod to deal with Time form

      DESC

    s.homepage     = "https://github.com/brandy2015"
    s.license      = "MIT"
    s.swift_version = '5.0'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
    s.ios.deployment_target = '13.0' 
    s.author             = { "Brandy" => "" }
    s.authors            = { "Brandy" => "zhangqianbrandy2012@gmail.com" }
    s.platform     = :ios, "13.0"
    s.source       = { :git => "https://github.com/brandy2015/XYZTimeKit.git", :tag => "3.1.3"}
    
    s.source_files = "{XYZTimeKit/Source/*,XYZTimeKit/Source/SwiftDate/*,XYZTimeKit/Source/SwiftDate/*/*,XYZTimeKit/Source/SwiftDate/*/*/*}"

end
