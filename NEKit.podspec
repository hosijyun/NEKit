Pod::Spec.new do |s|
  s.name             = 'NEKit'
  s.module_name      = 'NEKit'
  s.version          = '0.16.1'
  s.summary          = 'A short description of NEKit.'
  s.homepage         = 'https://github.com/hesiyuan/NEKit'
  s.author           = 'hosijyun'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'git@github.com:hosijyun/NEKit.git', :tag => s.version.to_s }
  s.swift_versions   = '5.0'
  s.ios.deployment_target = '11.0'

  s.source_files = 'NEKit/Classes/**/*.swift', 'NEKit/Classes/lwip/**/*.c'
  s.exclude_files = 'NEKit/Classes/IPStack/Packet/IPMutablePacket.swift', 'NEKit/Classes/IPStack/Packet/TCPMutablePacket.swift', 'NEKit/Classes/Crypto/SodiumStreamCrypto.swift', 'NEKit/Classes/IPStack/Router.swift'
  s.preserve_paths = 'NEKit/Classes/lwip/**/*'
  s.dependency 'CocoaLumberjack/Swift'
  s.dependency 'CocoaAsyncSocket'
  s.xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/NEKit/Classes/lwip/include/',
    'HEADER_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/NEKit/Classes/lwip/include/'
  }
end
