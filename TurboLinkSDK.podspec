Pod::Spec.new do |s|
    s.name             = 'TurboLinkSDK'
    s.version          = '1.1.4'
    s.summary          = 'TurboLink iOS SDK'

    s.description      = <<-DESC
    TurboLink native track allows you to find what attracts new users to your app,
    measure all your app marketing activities on one dashboard, and add new traffic sources in minutes,
    all without having to update SDK.
    DESC

    s.homepage         = 'https://www.branchcn.com'
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2024 TurboLink Ltd. All rights reserved.' }
    s.author           = { 'Tech' => 'tech@branchcn.com' }
    s.requires_arc = true
    s.platform     = :ios
    s.swift_version = '5.0'
    s.source       = {
        http: "https://github.com/Branchcn/TurboLinkFramework/releases/download/1.1.4/TurboLinkSDK.xcframework.zip",
        sha256: "181954df2c8570d8b18b23e911c2ad6ed422afcd5e077b46e43f560c808270ab"
    }

    s.ios.deployment_target = '12.0'

    s.ios.frameworks = 'SystemConfiguration', 'Network','UIKit'
    s.ios.vendored_frameworks = 'TurboLinkSDK.xcframework'
    
end
