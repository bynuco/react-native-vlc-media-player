Pod::Spec.new do |s|
  s.name         = "react-native-vlc-media-player"
  s.version      = "1.0.38"
  s.summary      = "VLC player"
  s.requires_arc = true
  s.author       = { 'roshan.milinda' => 'rmilinda@gmail.com' }
  s.license      = 'MIT'
  s.homepage     = 'https://github.com/razorRun/react-native-vlc-media-player.git'
  s.source       = { :git => "https://github.com/razorRun/react-native-vlc-media-player.git" }
  s.source_files = 'ios/RCTVLCPlayer/*'
  s.ios.deployment_target = "15.1"
  s.tvos.deployment_target = "15.1"
  s.static_framework = true
  s.dependency 'React-Core'
  # VLC 4 için: MobileVLCKit 4.0.0 henüz CocoaPods'ta stable olarak yayınlanmamış olabilir
  # Eğer hata alırsanız, 3.6.x versiyonuna geri dönebilirsiniz: '~> 3.6.0'
  s.ios.dependency 'MobileVLCKit', '~> 4.0.0'
  # TVVLCKit 4.0.0 henüz CocoaPods'ta yayınlanmadı, tvOS kullanmıyorsanız bu satır yorum satırı
  # tvOS için VLC 3.6.x kullanabilirsiniz: s.tvos.dependency 'TVVLCKit', '~> 3.6.0'
  # s.tvos.dependency 'TVVLCKit', '~> 4.0.0'
end
