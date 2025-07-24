# ASO (App Store Optimization) Tool

Bu araç, App Store optimizasyonu için anahtar kelime analizi ve başlık/alt başlık önerileri sunan bir masaüstü uygulamasıdır.

## Özellikler

- CSV dosyalarından keyword verilerini okuma ve birleştirme
- Keyword, Volume ve Difficulty metriklerini analiz etme
- Branded kelimeleri otomatik tespit ve filtreleme
- Ülkeye özgü çoğul ekleri kaldırma
- **Gemini 2.0 Flash** destekli Title ve Subtitle önerileri
- Anahtar kelime eşleştirme ve analiz
- Drag & Drop CSV dosya desteği
- İlerleme çubuğu ile işlem takibi
- Otomatik tamamlamalı ülke seçimi
- **App Ideas Generator** - AI destekli uygulama fikirleri üretimi

## Gereksinimler

```bash
python 3.x
flet
pandas
google-generativeai
openpyxl
numpy
httpx
```

## Kurulum

1. Gerekli Python paketlerini yükleyin:
```bash
pip install -r requirements.txt
```

2. **Gemini API anahtarınızı ayarlayın:**
   - `aso_generate_flet.py` dosyasında `GEMINI_API_KEY` değişkenini güncelleyin
   - Veya kendi API anahtarınızı almak için: https://makersuite.google.com/app/apikey

## Kullanım

1. Uygulamayı başlatın:
```bash
python aso_generate_flet.py
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
   - **🏆 Top 20 İdeal Keywords**
   - **💡 App Ideas Generator**

6. Sonuçları Excel olarak dışa aktarın

## CSV Dosya Formatı

Girdi CSV dosyalarınız aşağıdaki sütunları içermelidir:
- Keyword
- Volume
- Difficulty
- Growth (Max Reach)
- Max. Reach
- No. of results

## Özellik Detayları

### Kelime Frekans Analizi
- Anahtar kelimelerin kullanım sıklığını hesaplar
- Branded kelimeleri otomatik tespit eder
- Çoğul ekleri kaldırır

### Title ve Subtitle Önerileri
- **Gemini 2.0 Flash** ile optimize edilmiş başlık önerileri
- Ülkeye özgü optimizasyon
- Karakter sınırlarına uygun öneriler

### Top 20 İdeal Keywords
- Düşük Difficulty + Yüksek Volume/Growth/MaxReach kombinasyonu
- Ağırlıklı skor hesaplama sistemi
- En ideal keywords'leri otomatik tespit

### App Ideas Generator
- **Gemini 2.0 Flash** ile AI destekli uygulama fikirleri
- Kategori ve keyword bazlı stratejik analiz
- Content Type, Target Audience, Monetization Model önerileri

## API Kullanımı

Bu uygulama **Google Gemini 2.0 Flash** API'sini kullanır:
- Branded kelime tespiti
- Çoğul ek kaldırma
- Title/Subtitle önerileri
- App Ideas üretimi

## Lisans

Bu proje MIT lisansı altında lisanslanmıştır. 