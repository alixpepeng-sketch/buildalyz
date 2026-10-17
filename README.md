# Alyz WhatsApp Project
Project Flutter 3.35+ dengan Java 21, diamankan dan dibuild via GitHub Actions. Desain menggunakan gaya Monochrome Neubrutalism (Hitam, Putih, border 3px).

## SECURITY SETUP STEPS (GitHub Actions)
1. Download `google-services.json` dari Firebase Console.
2. Convert file tersebut ke format Base64 via [base64.guru](https://base64.guru/converter/encode/file).
3. Buka Repository GitHub > Settings > Secrets and variables > Actions > New repository secret.
4. Set Name: `GOOGLE_SERVICES_JSON` dan Paste hasil Base64 di Secret Value.
5. Lakukan Push ke branch `main`, GitHub Actions akan otomatis merakit APK (obfuscated & split-debug-info) secara aman.
