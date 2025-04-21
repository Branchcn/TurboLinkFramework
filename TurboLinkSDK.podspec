Pod::Spec.new do |s|
    s.name             = 'TurboLinkSDK'
    s.version          = '1.1.37'
    s.summary          = 'TurboLink iOS SDK'


    s.description      = <<-DESC
    TurboLink native track allows you to find what attracts new users to your app,
    measure all your app marketing activities on one dashboard, and add new traffic sources in minutes,
    all without having to update SDK.
    DESC


    s.homepage         = 'https://www.turbolink.ai'
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


    # 默认使用静态库
    s.default_subspec = 'Static'


    # 静态库 subspec
    s.subspec 'Static' do |static|
        static.vendored_frameworks = 'Static/TurboLinkSDK.xcframework'
    end


    # 动态库 subspec
    s.subspec 'Dynamic' do |dynamic|
        dynamic.vendored_frameworks = 'Dynamic/TurboLinkSDK.xcframework'
    end
end
