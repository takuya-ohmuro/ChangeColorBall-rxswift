# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'ChangeColorBall' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ChangeColorBall
pod 'RxSwift'
pod 'RxCocoa'
pod 'ChameleonFramework/Swift', :git => 'https://github.com/ViccAlexander/Chameleon.git'
 
end
 
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
              config.build_settings['ENABLE_TESTABILITY'] = 'YES'
              config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end