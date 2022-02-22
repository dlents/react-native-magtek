require "json"

package = JSON.parse(File.read(File.join(__dir__, "../package.json")))

Pod::Spec.new do |spec|
  spec.name         = 'MTSCRA'
  spec.version      = "0.1.2"
  spec.summary      = "The Magtek iOS SDK"
  spec.homepage     = 'https://www.magtek.com/'
  spec.platform     = :ios
  spec.author       = 'Magtek'
  spec.source       = { :git => package["repository"]["url"], :branch => "master" }
  spec.source_files = '.'
  spec.frameworks   = %w(AVFoundation AudioToolbox CoreBluetooth ExternalAccessory)
  spec.libraries    = %w()
  spec.vendored_libraries = 'Lib/Release-iphoneos/libMTSCRA.a', 'Lib/Release-iphonesimulator/libMTSCRA.a'
  spec.public_header_files = 'MTSCRA.h'
end
