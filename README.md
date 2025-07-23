# ASO (App Store Optimization) Tool

Bu araç, App Store optimizasyonu için anahtar kelime analizi ve başlık/alt başlık önerileri sunan bir masaüstü uygulamasıdır.

## Özellikler

- CSV dosyalarından keyword verilerini okuma ve birleştirme
- Keyword, Volume ve Difficulty metriklerini analiz etme
- Branded kelimeleri otomatik tespit ve filtreleme
- Ülkeye özgü çoğul ekleri kaldırma
- GPT-4 destekli Title ve Subtitle önerileri
- Anahtar kelime eşleştirme ve analiz
- Drag & Drop CSV dosya desteği
- İlerleme çubuğu ile işlem takibi
- Otomatik tamamlamalı ülke seçimi

## Gereksinimler

```bash
python 3.x
tkinter
tkinterdnd2
pandas
openai
python-dotenv
```

## Kurulum

1. Gerekli Python paketlerini yükleyin:
```bash
pip install pandas openai tkinterdnd2 python-dotenv
```

2. OpenAI API anahtarınızı ayarlayın:
   - Projenin kök dizininde `.env` dosyası oluşturun
   - İçine API anahtarınızı şu formatta ekleyin:
   ```
   OPENAI_API_KEY=your-api-key-here
   ```
   - `.env` dosyasını asla GitHub'a push etmeyin!

## Kullanım

1. Uygulamayı başlatın:
```bash
python aso_genarate.py
```

2. CSV dosyalarınızı sürükleyip bırakın veya klasör seçin

3. Difficulty limitini ayarlayın (varsayılan: 20)

4. Ülke seçin

5. İşlem yapmak istediğiniz tabloyu seçin:
   - Birleştirilmiş Ana Tablo
   - Keyword_Volume_Difficulty Tablosu
   - Kelime Frekansı Tablosu
   - Branded Kelimelerden Ayrıştırılmış Tablo
   - Eklerinden Ayrılmış Kelime Frekans Tablosu
   - Title Subtitle Tablosu

6. Sonuçları CSV olarak dışa aktarın

## CSV Dosya Formatı

Girdi CSV dosyalarınız aşağıdaki sütunları içermelidir:
- Keyword
- Volume
- Difficulty

## Özellik Detayları

### Kelime Frekans Analizi
- Anahtar kelimelerin kullanım sıklığını hesaplar
- Branded kelimeleri otomatik tespit eder
- Çoğul ekleri kaldırır

### Title ve Subtitle Önerileri
- GPT-4 ile optimize edilmiş başlık önerileri
- Seçilen ülkeye özgü dil desteği
- Karakter limiti kontrolü (30 karakter)
- Anahtar kelime kullanım optimizasyonu

### Eşleşen Kelimeler Analizi
- Title ve Subtitle'da kullanılan kelimelerin analizi
- Volume ve Difficulty metriklerinin ortalaması
- Kullanılmayan anahtar kelimelerin listesi

## Hata Ayıklama

Uygulama, `app.log` dosyasına detaylı log kayıtları tutar. Hata durumunda bu dosyayı kontrol edin.

## Katkıda Bulunma

1. Bu depoyu fork edin
2. Yeni bir branch oluşturun (`git checkout -b feature/yeniOzellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeniOzellik`)
5. Pull Request oluşturun

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasına bakın.

## İletişim

Sorularınız için issue açabilir veya pull request gönderebilirsiniz. 