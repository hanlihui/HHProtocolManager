#
# Be sure to run `pod lib lint HHProtocolManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHProtocolManager'
  s.version          = '0.1.3'
  s.summary          = '用于模块间调度的中间件.'
  s.description      = <<-DESC
                    用于模块间调度的中间件.
                       DESC

  s.homepage         = 'https://github.com/lihuihan/HHProtocolManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hanlihui' => 'lihui.han@qq.com' }
  s.source           = { :git => 'https://github.com/lihuihan/HHProtocolManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HHProtocolManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HHProtocolManager' => ['HHProtocolManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
