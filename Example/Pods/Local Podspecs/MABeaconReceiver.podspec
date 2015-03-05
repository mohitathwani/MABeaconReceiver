#
# Be sure to run `pod lib lint MABeaconReceiver.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MABeaconReceiver"
  s.version          = "0.1.0"
  s.summary          = "MABeaconReceiver is a light weight API to quickly connect to iBeacons."
  s.description      = <<-DESC
                       MABeaconReceiver is a light weight 3 line set up to quickly connect to iBeacons. Using this library gives you complete control without having to depend on SDKs provided by iBeacon manufacturers.

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/mohitathwani/MABeaconReceiver"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Mohit Athwani" => "mohit@athwani.net" }
  s.source           = { :git => "https://github.com/mohitathwani/MABeaconReceiver.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/UIMohitAthwani'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MABeaconReceiver' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'CoreLocation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
