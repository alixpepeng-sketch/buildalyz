# ALYZZ AI - Engine

Template repo GitHub Actions yang membangun APK Flutter. Dipakai oleh web ALYZZ AI (folder `/web`).

## Setup (1x)

1. Buat repo baru di GitHub (misal `alyzz-engine`), boleh private.
2. Push isi folder ini ke branch `main`:

   ```bash
   git init
   git add .
   git commit -m "init engine"
   git branch -M main
   git remote add origin https://github.com/USERNAME/alyzz-engine.git
   git push -u origin main
   ```

3. Repo > Settings > Actions > General > Workflow permissions: pilih **Read and write permissions** (untuk membuat Release).
4. Buat fine-grained token: akses hanya repo ini, Contents = Read and write, Actions = Read and write, Metadata = Read.
5. Isi `GITHUB_TOKEN`, `REPO_OWNER`, `REPO_NAME` di `.env.local` project `/web` (lihat README web atau halaman `/setup`).

## Cara kerja

- Web mem-push project Flutter + icon ke repo ini (commit memakai `[skip ci]`), lalu memicu `workflow_dispatch` dengan input `packageName`, `appName`, `requestId`.
- Workflow: Java 21 (zulu) > Flutter 3.22.0 > ganti `applicationId` + label > `flutter build apk --release --split-per-abi --obfuscate`.
- APK dipublikasikan ke GitHub Release (tag `build-<run_number>`) dan diunggah sebagai artifact `apk`.

## Catatan

- Yang diganti otomatis: `applicationId` di `android/app/build.gradle(.kts)` dan `android:label`. `namespace` sengaja tidak diubah supaya `MainActivity` tidak rusak.
- Java 21 butuh Gradle 8.5 atau lebih baru. Project user dengan `gradle-wrapper.properties` lama (Gradle 7.x) akan gagal build. Naikkan ke `gradle-8.5-all.zip`.
- Folder `android/` di template ini adalah skeleton minimal. Jika project user tidak punya folder android, workflow menjalankan `flutter create --platforms=android .`.
- Release build memakai signing debug. Untuk Play Store, siapkan keystore sendiri.
