# Alyz WhatsApp Project - Secure Flutter App

## TECH STACK
- Flutter 3.24.5 / Dart 3.5.4
- Java 21 Temurin / Kotlin 1.9.22 / Gradle 8.5 / AGP 8.1.0
- Min SDK 21, Target SDK 34, Compile SDK 34
- Design: Monochrome Neubrutalism (Black & White, 3px Border, Rounded 20-24px, SF Pro)

## SECURITY SETUP & GITHUB ACTIONS
1. Download `google-services.json` from Firebase Console.
2. Convert file to base64 string via online tool or command:
   `base64 -w 0 android/app/google-services.json`
3. Add a new secret named `GOOGLE_SERVICES_JSON` in GitHub Repository Settings -> Secrets and variables -> Actions.
4. Push code to `main` branch to trigger auto-build APK via GitHub Actions workflow.
