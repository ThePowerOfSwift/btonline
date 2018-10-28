source 'https://github.com/cocoapods/specs.git'
platform :ios, '9.0'
inhibit_all_warnings!
use_frameworks!

workspace 'BTOnline.xcworkspace'

target 'BTOnline' do
    project 'BTOnline'
    
    # Architect
    pod 'MVVM-Swift', '1.1.0' # MVVM Architect for iOS Application.
    
    # Data
    pod 'ObjectMapper', '3.3.0' # Simple JSON Object mapping written in Swift.
    
    # Network
    pod 'Alamofire', '4.7.3' # Elegant HTTP Networking in Swift.
    pod 'AlamofireNetworkActivityIndicator', '2.3.0' # Controls the visibility of the network activity indicator on iOS using Alamofire.
    pod 'Kingfisher'

    # Utils
    pod 'SwiftLint', '0.27.0' # A tool to enforce Swift style and conventions.
    pod 'SwiftUtils', '4.0.1'
    pod 'SwiftDate', '4.5.1'
    pod 'AsyncSwift', '2.0.4'
#    pod 'CocoaLumberjack/Swift', '3.4.2'
    pod 'SwifterSwift', '4.6.0'
#    pod 'SDWebImage', '4.4.1'
#    pod 'IQKeyboardManagerSwift', '6.0.4'
#    pod 'SwiftyRSA', '1.5.0'
#    pod 'JWTDecode', '~> 2.1'

    # UI
    pod 'Parchment', :git => 'https://github.com/quang-nk/Parchment'
    pod 'GlidingCollection'
    pod 'RAMReel'
    pod 'TransitionButton'

#    pod 'SVProgressHUD', '2.2.5'
#    pod 'GradientLoadingBar', '1.1.12'
#    pod 'JVFloatLabeledTextField', '1.2.1'
#    pod 'MXParallaxHeader', :git => 'https://github.com/blkbrds/MXParallaxHeader', :commit => 'be8d71d'
#    pod 'FaveButton', :git => 'https://github.com/blkbrds/fave-button', :branch => 'update_swift4', :commit => '78c2dc4'
#
    # Crash reporting & beta deployment
    pod 'Fabric'
    pod 'Crashlytics'
#    pod 'DeployGateSDK'

    # Rx
#    pod 'RxSwift', '4.3.1'
#    pod 'RxCocoa', '4.3.1'

    target 'BTOnlineTests' do
        inherit! :complete
        pod 'Nimble', '7.3.1'
        pod 'Quick', '1.3.2'
        pod 'Mockingjay', '2.0.1'
        pod 'RxTest', '4.3.1'
        pod 'RxBlocking', '4.3.1'
    end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        if ['SwiftUtils', 'FaveButton'].include? target.name
            target.build_configurations.each do |config|
                config.build_settings['SWIFT_VERSION'] = '4'
            end
        end
    end
    
    installer.pods_project.build_configurations.each do |config|
        if config.name.include? 'Debug'
            config.build_settings['ONLY_ACTIVE_ARCH'] = 'YES'
            config.build_settings['ENABLE_TESTABILITY'] = 'YES'
        end
        if config.name == 'Release'
            config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
        end
    end
end
