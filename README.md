# Reno AI Live - Proyek Android Native Lengkap

Aplikasi Android Native pemindai layar dan penjawab soal kilat dengan Floating Overlay (*WindowManager*), Google ML Kit OCR on-device, MediaProjection, dan AI Gemini 3.8 Flash.

## Target Android
- **Min SDK**: 26 (Android 8.0 Oreo)
- **Target SDK**: 35 (Android 15)
- **Compile SDK**: 35
- **Arsitektur**: Kotlin 2.0.21, Jetpack Compose Material 3, Room 2.6.1, OkHttp 4.12, AndroidX Security Crypto.

## Struktur Berkas Lengkap
```
RenoAILive/
├── gradle/
│   ├── libs.versions.toml
│   └── wrapper/
│       └── gradle-wrapper.properties
├── app/
│   ├── build.gradle.kts
│   ├── proguard-rules.pro
│   └── src/
│       └── main/
│           ├── AndroidManifest.xml
│           ├── java/com/reno/ailive/
│           │   ├── RenoApp.kt
│           │   ├── MainActivity.kt
│           │   ├── service/FloatingOverlayService.kt
│           │   ├── capture/ScreenCaptureManager.kt
│           │   ├── ocr/OcrProcessor.kt
│           │   ├── ai/AiEngineClient.kt
│           │   ├── data/ (AppDatabase, HistoryDao, HistoryEntity, SecureStorage)
│           │   └── ui/ (Theme, Color, Screens)
│           └── res/
│               ├── values/ (strings.xml, colors.xml, themes.xml)
│               ├── values-night/ (themes.xml)
│               ├── xml/ (backup_rules.xml, data_extraction_rules.xml)
│               ├── drawable/ (ic_launcher_background.xml, ic_launcher_foreground.xml, ic_notification.xml)
│               └── mipmap-anydpi-v26/ (ic_launcher.xml, ic_launcher_round.xml)
├── .github/workflows/build-apk.yml
├── build.gradle.kts
├── settings.gradle.kts
├── gradle.properties
├── gradlew
└── gradlew.bat
```

## Cara Build Menjadi APK

### Opsi 1: Menggunakan Android Studio (Laptop / PC)
1. Ekstrak file ZIP proyek.
2. Buka **Android Studio Ladybug (2024.2.1+)** atau versi lebih baru.
3. Pilih **File > Open**, lalu buka folder `RenoAILive`.
4. Tunggu Gradle Sync selesai secara otomatis.
5. Jalankan perintah di Terminal:
   ```bash
   ./gradlew assembleDebug
   ```
   File APK siap pakai akan tersedia di `app/build/outputs/apk/debug/app-debug.apk`.

### Opsi 2: Otomatis di Cloud via GitHub Actions (Tanpa Android Studio)
Proyek ini sudah dilengkapi berkas `.github/workflows/build-apk.yml`. Cukup buat repo GitHub baru dan push folder ini. GitHub Actions akan otomatis meng-compile APK dan menyediakannya untuk diunduh langsung dari HP Anda.
