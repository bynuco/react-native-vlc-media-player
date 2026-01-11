require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-vlc-media-player"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  React native media player for video streaming and playing. Supports RTSP,RTMP and other protocols supported by VLC player
                   DESC
  s.homepage     = "https://github.com/bynuco/react-native-vlc-media-player"
  s.license      = "MIT"
  s.author       = { "author" => "nesimiztrk@gmail.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/bynuco/react-native-vlc-media-player.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React-Core"
  # VLC 4.0.0a18 alpha sürümü için CocoaPods kaynağı gerekebilir
  # Not: VLC 4.0.0a18 alpha sürümü CocoaPods'un varsayılan kaynaklarında olmayabilir
  # Bu durumda kullanıcının Podfile'ına manuel olarak eklemesi gerekebilir:
  # pod 'VLCKit', '4.0.0a18', :source => 'https://github.com/CocoaPods/Specs.git'
  # Veya alternatif olarak:
  # pod 'VLCKit', :git => 'https://code.videolan.org/videolan/VLCKit.git', :tag => '4.0.0a18'
  s.dependency "VLCKit", "4.0.0a18"
end
