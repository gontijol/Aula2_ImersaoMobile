// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_day/app/core/colors.dart';

class WidgetModulo extends StatelessWidget {
  final String titulo;
  final String descricao;
  final Function() onPressed;

  const WidgetModulo(
      {required this.titulo,
      required this.descricao,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const SizedBox(height: 20),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                dark_blue,
                // light_blue,
                // light_blue,
                // light_blue,
                light_blue,
              ],
            ),
          ),
          child: InkWell(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Text(
                            titulo,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: const [
                                Shadow(
                                  blurRadius: 1,
                                  color: Colors.black,
                                  offset: Offset(1.0, 1.0),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Text(
                              descricao,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
