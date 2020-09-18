#
# Be sure to run `pod lib lint SYBPush.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYBPush'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SYBPush.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  百度Push服务SDK
                       DESC

  s.homepage         = 'https://github.com/isandboy/SYBPush'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYBPush.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.default_subspec = 'normal'
  s.source_files = 'SYBPush/Classes/*.{h,m}'
  
  s.subspec 'normal'  do |ss|
      ss.source_files = 'SYBPush/Classes/normal/*.{h}'
      ss.vendored_libraries = 'SYBPush/Classes/normal/*.a'
      ss.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
      ss.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation'
      ss.libraries = 'z'

  end
  
  s.subspec 'idfa'  do |ss|
      ss.source_files = 'SYBPush/Classes/idfa/*.{h}'
      ss.vendored_libraries = 'SYBPush/Classes/idfa/*.a'
      ss.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load' }
      ss.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'AdSupport'
      ss.libraries = 'z'
  end
  
  
  # s.resource_bundles = {
  #   'SYBPush' => ['SYBPush/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
