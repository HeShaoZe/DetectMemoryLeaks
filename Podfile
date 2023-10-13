source 'https://github.com/CocoaPods/Specs.git'
#source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
platform :ios, '11.0'
inhibit_all_warnings!
use_modular_headers!
use_frameworks!
target 'DetectMemoryLeaks' do
    pod 'MLeaksFinder', :configurations => ['Debug']
    pod 'FBRetainCycleDetector', :git=>"https://github.com/cdoky/FBRetainCycleDetector.git", :configurations => ['Debug']
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
        config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
    end
  end
end
