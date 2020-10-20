#
# Be sure to run `pod lib lint SYBPush.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYBPush'
  s.version          = '1.6.2'
  s.summary          = '百度Push服务SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  百度Push服务SDK 版本：2020-06-02 iOS V1.6.2
                       DESC

  s.homepage         = 'https://github.com/isandboy/SYBPush'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYBPush.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.default_subspec = 'normal'
  
  s.subspec 'normal' do |ss|
      ss.source_files = ['SYBPush/Classes/*.{h,m}', 'SYBPush/Classes/normal/*.{h}']
      ss.vendored_libraries = 'SYBPush/Classes/normal/*.a'
      ss.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation'
      ss.libraries = 'z'
      ss.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load','VALID_ARCHS' => 'x86_64 armv7 arm64' }
  end
  
  s.subspec 'idfa' do |ss|
      ss.source_files = ['SYBPush/Classes/*.{h,m}','SYBPush/Classes/idfa/*.{h}']
      ss.vendored_libraries = 'SYBPush/Classes/idfa/*.a'
      ss.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'AdSupport'
      ss.libraries = 'z'
      ss.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load','VALID_ARCHS' => 'x86_64 armv7 arm64' }
  end
  
  
  # s.resource_bundles = {
  #   'SYBPush' => ['SYBPush/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
