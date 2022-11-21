import 'package:decoration_app/components/text_desing.dart';
import 'package:flutter/material.dart';

import '../../model/list_medicos.dart';

class DetalhesPage extends StatefulWidget {
  Medicos medicos;
  DetalhesPage({Key? key, required this.medicos}) : super(key: key);

  @override
  State<DetalhesPage> createState() => _DetalhesPageState();
}

class _DetalhesPageState extends State<DetalhesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Stack(children: [
                      Positioned(
                          top: 100,
                          left: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: const SizedBox(
                              height: 800,
                              width: 200,
                              child: Text(
                                'Médico',
                                style: TextStyle(fontSize: 30),
                              ),
                            ),
                          )),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 90,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.white38),
                            child: Column(children: const [
                              DesingText(title: 'Pacientes', titleSize: 4),
                              Padding(padding: EdgeInsets.all(8)),
                              DesingText(title: '+100', titleSize: 10)
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 90,
                          child: Container(
                            color: Colors.white38,
                            child: Column(children: const [
                              DesingText(title: 'Experiência', titleSize: 4),
                              Padding(padding: EdgeInsets.all(8)),
                              DesingText(title: '+10 Anos', titleSize: 10)
                            ]),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 90,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.white38),
                            child: Column(children: const [
                              DesingText(title: 'Avaliação', titleSize: 4),
                              Padding(padding: EdgeInsets.all(8)),
                              DesingText(title: '5.0', titleSize: 10)
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const DesingText(title: 'Sobre o(a) Doutor(a)', titleSize: 6),
                  const Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 10, left: 10)),
                  Text(
                    widget.medicos.descMD,
                    style: const TextStyle(
                        decoration: TextDecoration.none, color: Colors.black38),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  const DesingText(title: 'Localização', titleSize: 10),
                  const Padding(padding: EdgeInsetsDirectional.all(8)),
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 200,
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Image.asset(
                        'assets/maps.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: const DesingText(
                        title: 'Agenda',
                        titleSize: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 160,
              left: 37,
              child: Container(
                height: 150,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            widget.medicos.titleMD,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: DesingText(
                              title: widget.medicos.descMD, titleSize: 60),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          widget.medicos.imgMD,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
