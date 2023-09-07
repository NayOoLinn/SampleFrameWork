#
#  Be sure to run `pod spec lint SampleFrameWork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "SampleFrameWork"
  spec.version      = "1.0.0"
  spec.summary      = "A short description of SampleFrameWork."
  spec.description  = "A complete description of SampleFrameWork"

  spec.homepage     = "https://github.com/NayOoLinn/SampleFrameWork"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author       = { "Nay Oo Linn" => "alone.nol@gmail.com" }

  spec.platform     = :ios
  spec.ios.deployment_target = "12.0"
  
  spec.source        = { :http => 'https://github.com/NayOoLinn/SampleFrameWork/blob/main/SampleFrameWork-v1.0.0.zip' }
  spec.source_files  = "SampleFrameWork"
  spec.exclude_files = "Classes/Exclude"
  spec.swift_version = "5"

  # spec.public_header_files = "Classes/**/*.h"
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.requires_arc = true
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  
  spec.dependency "Core", :git => 'http://10.0.0.10/SuperApp/iOS/core.git'

  spec.vendored_frameworks = 'SampleFrameWork.xcframework'
  
end
