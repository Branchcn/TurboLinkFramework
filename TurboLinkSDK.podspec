Pod::Spec.new do |s|
    s.name             = 'TurboLinkSDK'
    s.version          = '1.1.28'
    s.summary          = 'TurboLink iOS SDK'

    s.description      = <<-DESC
    TurboLink native track allows you to find what attracts new users to your app,
    measure all your app marketing activities on one dashboard, and add new traffic sources in minutes,
    all without having to update SDK.
    DESC

    s.homepage         = 'https://www.branchcn.com'
    s.license          = { :type => 'Proprietary', :text => 'Copyright 2025 TurboLink Ltd. All rights reserved.' }
    s.author           = { 'Tech' => 'tech@branchcn.com' }
    s.requires_arc = true
    s.platform     = :ios
    s.swift_version = '5.0'
    s.source = {
        :http => "https://github.com/Branchcn/TurboLinkFramework/releases/download/#{s.version}/TurboLinkSDK.xcframework.zip"
    }

    s.ios.deployment_target = '12.0'

    s.ios.frameworks = 'SystemConfiguration', 'Network','UIKit'
    s.ios.vendored_frameworks = 'TurboLinkSDK.xcframework'
    
    # 默认使用静态库
    s.default_subspec = 'Static'

    # 静态库 subspec
    s.subspec 'Static' do |static|
        static.vendored_frameworks = 'TurboLinkSDK-Static.xcframework'
    end

    # 动态库 subspec
    s.subspec 'Dynamic' do |dynamic|
        dynamic.vendored_frameworks = 'TurboLinkSDK-Dynamic.xcframework'
    end 
end
