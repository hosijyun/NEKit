#
# Be sure to run `pod lib lint NEKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NEKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of NEKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hesiyuan/NEKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hesiyuan' => 'hesiyuan@gmail.com' }
  s.source           = { :git => 'https://github.com/hesiyuan/NEKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'NEKit/Classes/**/*'
  s.exclude_files = 'NEKit/Classes/IPStack/Packet/IPMutablePacket.swift', 'NEKit/Classes/IPStack/Packet/TCPMutablePacket.swift', 'NEKit/Classes/Crypto/SodiumStreamCrypto.swift', 'NEKit/Classes/IPStack/Router.swift'
  s.dependency 'CocoaLumberjack/Swift'
  s.dependency 'Yaml'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'MMDB-Swift'
  s.xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/NEKit/Classes/tun2socks'
  }
  
  # s.resource_bundles = {
  #   'NEKit' => ['NEKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
