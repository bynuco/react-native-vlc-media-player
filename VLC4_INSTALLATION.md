# VLC 4 Kurulum Kılavuzu

## Durum

VLC 4 için CocoaPods entegrasyonu henüz tam olarak stable değil. [VLCKit repository](https://code.videolan.org/videolan/VLCKit) incelendiğinde:

- **VLCKit 4.0.0a18** (alpha) CocoaPods'ta "VLCKit" adıyla mevcut
- **MobileVLCKit 4.0.0** henüz CocoaPods'ta stable olarak yayınlanmamış olabilir
- **TVVLCKit 4.0.0** henüz CocoaPods'ta yayınlanmamış

## Çözüm Seçenekleri

### Seçenek 1: MobileVLCKit 4.0.0'ı Deneyin (Önerilen)

Önce `pod install` komutunu çalıştırın. Eğer hata alırsanız aşağıdaki adımları izleyin:

#### Adım 1: CocoaPods Repository'lerini Güncelleyin

```bash
cd ios
pod repo update
```

#### Adım 2: Podfile'a VideoLAN Repository'sini Ekleyin

Ana projenizin `ios/Podfile` dosyasına şunu ekleyin:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://code.videolan.org/videolan/CocoaPods.git'  # VideoLAN repository
```

#### Adım 3: Pod Install

```bash
pod install
```

### Seçenek 2: VLC 3.6.x Kullanın (Stable)

Eğer VLC 4 CocoaPods'ta bulunamazsa, podspec dosyasını 3.6.x versiyonuna geri çevirebilirsiniz:

```ruby
s.ios.dependency 'MobileVLCKit', '~> 3.6.0'
s.tvos.dependency 'TVVLCKit', '~> 3.6.0'
```

### Seçenek 3: Alpha Versiyonu Kullanın

VLCKit 4.0.0a18 (alpha) kullanmak için podspec'i şu şekilde güncelleyin:

```ruby
s.ios.dependency 'VLCKit', '4.0.0a18'
```

**Not:** Bu durumda podspec'teki "MobileVLCKit" yerine "VLCKit" kullanmanız gerekebilir.

## tvOS Desteği

tvOS için TVVLCKit 4.0.0 henüz yayınlanmamış. Şu an için:

1. TVVLCKit bağımlılığını yorum satırı yapın (tvOS kullanmıyorsanız)
2. Veya TVVLCKit 3.6.x kullanın: `s.tvos.dependency 'TVVLCKit', '~> 3.6.0'`

## Hata Çözümü

Eğer `pod install` sırasında hata alırsanız:

1. `Podfile.lock` dosyasını silin
2. `pod cache clean --all` komutunu çalıştırın
3. `pod repo update` komutunu çalıştırın
4. `pod install` komutunu tekrar çalıştırın

## Kaynaklar

- [VLCKit GitLab Repository](https://code.videolan.org/videolan/VLCKit)
- [VLCKit CocoaPods](https://cocoapods.org/pods/VLCKit)
- [VideoLAN CocoaPods Repository](https://code.videolan.org/videolan/CocoaPods)
