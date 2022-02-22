
Pod::Spec.new do |spec|
  spec.name         = 'MTSCRA'
  spec.version      = '0.2.0'
  spec.summary      = 'The Magtek iOS SDK'
  spec.homepage     = 'https://www.magtek.com/'
  spec.platform     = :ios
  spec.author       = 'Magtek'
  spec.source       = { :path => '.' }
  spec.frameworks   = %w(AVFoundation AudioToolbox CoreBluetooth ExternalAccessory)
  spec.libraries    = %w()
  spec.vendored_libraries = 'Lib/Release-iphoneos/libMTSCRA.a', 'Lib/Release-iphonesimulator/libMTSCRA.a'
  spec.public_header_files = 'MTSCRA.h'
end
