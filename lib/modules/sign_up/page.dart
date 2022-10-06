import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_day/app/core/colors.dart';

class SignUp extends GetView {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                light_blue,
                dark_blue,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                const Center(
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
                const Text(
                  'Preencha os campos abaixo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    cursorColor: light_blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'Nome',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    cursorColor: light_blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    cursorColor: light_blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'Senha',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextFormField(
                    cursorColor: light_blue,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'Confirmar senha',
                      labelStyle: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
