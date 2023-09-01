Pod::Spec.new do |s|
  s.name             = 'SampleFrameWork'
  s.version          = '1.0.0'
  s.summary          = 'A short description of SampleFrameWork.'
  s.description      = 'Sample Framework'
  s.homepage         = 'https://github.com/NayOoLinn/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'someone@siriustech.io' => 'someone@siriustech.io' }
  s.source           = { :git => 'git@github.com:NayOoLinn/TestFrameWork.git',
 :tag => s.version.to_s }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'
  s.source_files     = '*'
  
  s.dependency 'Core'
end
