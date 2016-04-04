#
# Be sure to run `pod lib lint DGSwiftExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DGSwiftExtension"
  s.version          = "0.1.0"
  s.summary          = "Swift extensions for regular use of classes and views"
  s.homepage         = "https://github.com/Dhvl-Golakiya/DGSwiftExtension"
  s.license          = 'MIT'
  s.author           = { "dhvl-golakiya" => "dhvl.golakiya@gmail.com" }
  s.source           = { :git => "https://github.com/Dhvl-Golakiya/DGSwiftExtension.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Dhvl_Golakiya'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DGSwiftExtension' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
