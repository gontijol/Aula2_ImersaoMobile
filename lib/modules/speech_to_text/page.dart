// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_day/modules/speech_to_text/controller.dart';

class SpeechToTextPage extends GetView<SpeechController> {
  const SpeechToTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<SpeechController>(() => SpeechController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speech to Text'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => SizedBox(
                      height: controller.size.value,
                      width: controller.size.value,
                      child: RotatedBox(
                        quarterTurns: controller.rotacionar.value,
                        child: Image(
                          image: AssetImage(
                            controller.imagem.value,
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      Obx(() => Text(controller.speechText.value)),
                      const SizedBox(
                        width: 20,
                      ),
                      FloatingActionButton(
                          onPressed: () => controller.isListening(),
                          child: const Icon(Icons.mic)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
