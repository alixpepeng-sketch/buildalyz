import 'package:encrypt/encrypt.dart';

class AlyzEncryption {
  static final _key = Key.fromUtf8('AlyzW4Sup3rS3cretKey32Chars!!@#');
  static final _iv = IV.fromLength(16);
  static final _encrypter = Encrypter(AES(_key, mode: AESMode.cbc));

  static String encrypt(String plain) {
    if(plain.isEmpty) return '';
    return _encrypter.encrypt(plain, iv: _iv).base64;
  }

  static String decrypt(String base64) {
    try {
      if(base64.isEmpty) return '';
      return _encrypter.decrypt64(base64, iv: _iv);
    } catch(e) {
      return '[Pesan terenkripsi]';
    }
  }

  static String encryptForChat(String text, String chatId) {
    final customKey = Key.fromUtf8((chatId+'AlyzW4').padRight(32).substring(0,32));
    final enc = Encrypter(AES(customKey, mode: AESMode.cbc));
    return enc.encrypt(text, iv: _iv).base64;
  }
}