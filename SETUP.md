# ASO Generator Tool - Kurulum Rehberi

## 🚀 Hızlı Başlangıç

### 1. Virtual Environment Oluşturma
```bash
python3 -m venv venv
```

### 2. Virtual Environment'ı Aktifleştirme
```bash
source venv/bin/activate
```

### 3. Gerekli Paketleri Yükleme
```bash
pip install -r requirements.txt
```

### 4. Uygulamayı Çalıştırma
```bash
python aso_generate_flet.py
```

## 📋 Alternatif Çalıştırma Yöntemleri

### Shell Script ile (Önerilen)
```bash
./run_aso_tool.sh
```

### Manuel Kurulum
```bash
# Virtual environment oluştur
python3 -m venv venv

# Aktifleştir
source venv/bin/activate

# Paketleri yükle
pip install flet pandas openai openpyxl

# Çalıştır
python aso_generate_flet.py
```

## 🔧 Sorun Giderme

### macOS'ta "externally-managed-environment" Hatası
Bu hata, sistem Python'ını kullanmaya çalıştığınızda oluşur. Çözüm:
1. Virtual environment kullanın (yukarıdaki adımları takip edin)
2. Veya `pip install --user` kullanın

### Port Hatası
Eğer port 8550 kullanımdaysa, uygulama otomatik olarak farklı bir port seçecektir.

## 📁 Dosya Yapısı
```
ASO_Generator_Tool/
├── aso_generate_flet.py    # Ana uygulama
├── requirements.txt        # Gerekli paketler
├── run_aso_tool.sh        # Çalıştırma scripti
├── SETUP.md              # Bu dosya
├── venv/                 # Virtual environment
└── sample_CSV_archive/   # Örnek CSV dosyaları
```

## 🎯 Özellikler
- 📊 CSV dosyalarını birleştirme ve analiz
- 🔍 Keyword frekans analizi
- 🎯 ASO optimizasyonu
- 📈 Excel/CSV export
- �� Web tabanlı arayüz 