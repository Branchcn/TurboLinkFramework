Pod::Spec.new do |s|
    s.name             = 'TurboLinkSDK'
    s.version          = '1.1.27'
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
        http: "https://github.com/Branchcn/TurboLinkFramework/releases/download/1.1.27/TurboLinkSDK.xcframework.zip",
        sha256: "e9906e5e309c3d75e1e3cc0633a9620ee7765bf13300fa6c0afaea075dc3a413"
    }

    s.ios.deployment_target = '12.0'

    s.ios.frameworks = 'SystemConfiguration', 'Network','UIKit'
    s.ios.vendored_frameworks = 'TurboLinkSDK.xcframework'
    
end
