# vision-camera-vital-sign-plugin.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "vision-camera-vital-sign-plugin"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  vision-camera-vital-sign-plugin
                   DESC
  s.homepage     = "https://github.com/PanopticAI/vision-camera-vital-sign-plugin"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Eddie Lau" => "eddie@touchutility.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/PanopticAI/vision-camera-vital-sign-plugin.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "react-native-vital-sign-plugin"
end

