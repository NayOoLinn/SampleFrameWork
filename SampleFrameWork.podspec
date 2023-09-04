Pod::Spec.new do |s|
  s.name             = 'SampleFrameWork'
  s.version          = '1.0.0'
  s.summary          = 'A short description of SampleFrameWork.'
  s.description      = 'Sample Framework'
  
  s.plattform        = :ios, "12.0"
  s.homepage         = 'https://github.com/NayOoLinn/'
  s.license          = 'MIT'
  s.author           = { 'Nay Oo Linn' => 'alone.nol@gmail.com' }
  s.source           = { :git => 'git@github.com:NayOoLinn/SampleFrameWork.git' }
    
  s.source_files     = 'SampleFrameWork'
  s.swift_version    = '5.0'
  
  s.dependency 'Core'
end
