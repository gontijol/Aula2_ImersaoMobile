import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechController extends GetxController {
  final size = 100.0.obs;
  final rotacionar = 0.obs;
  final imagem = 'assets/logo.png'.obs;

  var speechText = 'Resultado da fala...'.obs;

  SpeechToText speechToText = SpeechToText();
  bool speechEnabled = false;

  @override
  void onInit() {
    super.onInit();
    initSpeech();
    speechText;
  }

  void initSpeech() async {
    speechEnabled = await speechToText.initialize();
  }

  isListening() {
    listen();
  }

  Future<void> listen() async {
    await speechToText.listen(onResult: (val) {
      speechText.value = val.recognizedWords;
    });
    return Future.delayed(const Duration(seconds: 6), () => notListening());
  }

  notListening() async {
    await speechToText.stop();
    if (speechText.contains('aumentar') ||
        speechText.contains('aumente') ||
        speechText.contains('Aumentar')) {
      size.value = size.value + 50;
    } else if (speechText.contains('diminuir') ||
        speechText.contains('diminua') ||
        speechText.contains('Diminua')) {
      size.value = size.value - 50;
    } else if (speechText.contains('rotacionar') ||
        speechText.contains('rotacione') ||
        speechText.contains('Rotacionar')) {
      rotacionar.value = rotacionar.value + 1;
      if (rotacionar > 3) {
        rotacionar.value = 0;
      }
    } else if (speechText.contains('luigi') || speechText.contains('Luigi')) {
      imagem.value = 'assets/luigi.png';
    } else if (speechText.contains('logo') ||
        speechText.contains('logo') ||
        speechText.contains('Globo')) {
      imagem.value = 'assets/logo.png';
    }
  }
}
