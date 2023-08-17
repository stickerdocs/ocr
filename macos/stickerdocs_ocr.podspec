#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint stickerdocs_ocr.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'stickerdocs_ocr'
  s.version          = '0.0.1'
  s.summary          = 'OCR'
  s.description      = <<-DESC
StickerDocs OCR
                       DESC
  s.homepage         = 'https://stickerdocs.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'StickerDocs Limited' => 'support@stickerdpcs.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.15'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
