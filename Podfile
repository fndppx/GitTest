#source 'https://github.com/CocoaPods/Specs.git'
#platform :ios, '7.0'  
#inhibit_all_warnings!
#
#pod 'MCUIKit', :svn => 'http://svn.imooc.com/svn/mobile/imooc/ios/trunk/MCUIKit'
#pod 'MCBase', :svn => 'http://svn.imooc.com/svn/mobile/imooc/ios/trunk/MCBase'
#


#-------------------华丽的分隔线-------------------#
source 'https://github.com/CocoaPods/Specs.git'
#source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'

# Uncomment this line to define a global platform for your project
platform :ios, '9.0'
inhibit_all_warnings!

target 'Test' do
    # Uncomment this line if you're using Swift or would like to use dynamic frameworks
     use_frameworks!
    
    # Pods for imooc
#     pod 'AFNetworking', '~> 4.0'
#     pod 'SSZipArchive', '2.2.2'
#     pod 'MBProgressHUD', '~> 1.1.0'
     pod 'Masonry', '~> 1.1.0'
#     pod 'MyLibrary', '~> 0.1.1'
#     pod 'MyLibraryPodTest', '~> 0.1.0'
#     pod 'MyLibraryPodTest'
     
#     pod 'A0PreMainTime/PreMainTime'
#     pod 'A0PreMainTime/TimeMonitor'
#   pod 'XXNibBridge', '~> 2.3.0'
#  
#  pod 'YYCategories','~> 1.0.4'
#  pod 'YYModel','~> 1.0.4'
#  pod 'YYText', '~> 1.0.7'
#  pod 'YYWeakProxy', '1.0.10'
#  pod 'FSCalendar', '2.8.0'
#  pod 'JSONModel', '1.8.0'
#  pod 'SSZipArchive', '2.2.2'
#  pod 'MBProgressHUD', '1.1.0'
#  pod 'PLCrashReporter', '1.8.1'
#  pod "ANREye"
#pod 'YKTensorFlowManager', :git =>'git@git.zuoyebang.cc:native/yktensorflowmanager.git', :branch => 'feature/ai_sdk_replace'

end


post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings['COMPILER_INDEX_STORE_ENABLE'] = "NO"
      end
  end
end
