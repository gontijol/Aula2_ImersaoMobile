import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_day/app/core/colors.dart';
import 'package:mobile_day/modules/login_page/widgets/loginGoogle.dart';

class LoginPage extends GetView {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              light_blue,
              light_blue,
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 500,
                    height: 250,
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.7,
                      image: const AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: light_blue,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: light_blue),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: 'Email',
                          labelStyle: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        cursorColor: light_blue,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: light_blue),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: 'Senha',
                          labelStyle: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: light_blue,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Cadastrar',
                                    style: TextStyle(
                                      // backgroundColor: light_blue,
                                      color: Colors.white,
                                      fontSize: 15,
                                    )),
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: light_blue,
                            child: const Icon(Icons.arrow_forward),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GoogleBtn1(
                            onPressed: () {},
                          ),
                        ],
                      ),
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
