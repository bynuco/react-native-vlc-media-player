# Podfile Örneği - VLC 4 için VideoLAN Repository

Eğer VLC 4 CocoaPods'ta bulunamazsa, VideoLAN'ın özel repository'sini ekleyin:

## Podfile'a Eklenecek Satırlar

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://code.videolan.org/videolan/CocoaPods.git'  # VideoLAN repository

platform :ios, '15.1'

target 'YourApp' do
  use_frameworks!
  
  # Diğer pod'larınız...
end
```

## Komutlar

```bash
cd ios
pod repo update
pod install
```

## Alternatif: VLC 3.6.x Kullanmak

Eğer VLC 4 henüz CocoaPods'ta yayınlanmamışsa, podspec dosyasını 3.6.x versiyonuna geri çevirebilirsiniz:

```ruby
s.ios.dependency 'MobileVLCKit', '~> 3.6.0'
s.tvos.dependency 'TVVLCKit', '~> 3.6.0'
```
