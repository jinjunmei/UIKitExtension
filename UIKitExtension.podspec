Pod::Spec.new do |s|
    s.name         = 'UIKitExtension'
    s.version      = '0.0.1'
    s.summary      = 'Provide UIKit Extension'
    s.homepage     = 'https://github.com/taojigu/UIKitExtension'
    s.license      = 'MIT'
    s.authors      = {'Gujitao' => 'taojigu@163.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/taojigu/UIKitExtension', :tag => s.version}
    s.source_files = 'Class/**/*.{h,m}'
    s.resource_bundles = {
        
    }
    s.requires_arc = true

end
