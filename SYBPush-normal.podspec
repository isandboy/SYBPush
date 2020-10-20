#
# Be sure to run `pod lib lint SYBPush.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SYBPush-normal'
  s.version          = '1.6.2'
  s.summary          = '百度Push服务SDK，不包含idfa'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  百度Push服务SDK 版本：2020-06-02 iOS V1.6.2，不包含idfa
                       DESC

  s.homepage         = 'https://github.com/isandboy/SYBPush'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isandboy' => 'sandboylu@gmail.com' }
  s.source           = { :git => 'https://github.com/isandboy/SYBPush-normal.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
    
  s.source_files = 'SYBPush/**/*.{h,m}'
  s.vendored_libraries = 'SYBPush/normal/*.a'
  s.frameworks = 'Foundation', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation'
  s.libraries = 'z'
  
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load',
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
  s.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
