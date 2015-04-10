#
# Be sure to run `pod lib lint SocaCrypto.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SocaCrypto"
  s.version          = "0.1.0"
  s.summary          = "A objective-c wrapper of CommonCrypto for Soca."
  s.description      = <<-DESC
                       You probably never need this, see the SocaCore and Soca for what your want.
                       DESC
  s.homepage         = "https://github.com/zhuhaow/SocaCrypto"
  s.license          = 'MIT'
  s.author           = { "Zhuhao Wang" => "zhuhaow@gmail.com" }
  s.source           = { :git => "https://github.com/zhuhaow/SocaCrypto.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/**/*.h'
end
