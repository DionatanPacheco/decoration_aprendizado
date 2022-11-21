import 'package:decoration_app/components/text_desing.dart';
import 'package:flutter/material.dart';

class JuniorPage extends StatelessWidget {
  const JuniorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
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
                          decoration: const BoxDecoration(color: Colors.white),
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
                          color: Colors.white,
                          child: Column(children: const [
                            DesingText(title: 'Experiência', titleSize: 4),
                            Padding(padding: EdgeInsets.all(8)),
                            DesingText(title: '+05 Anos', titleSize: 10)
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 90,
                        child: Container(
                          decoration: const BoxDecoration(color: Colors.white),
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
                const DesingText(title: 'Sobre o Doutor', titleSize: 6),
                const Padding(
                    padding: EdgeInsets.only(bottom: 5, right: 10, left: 10)),
                const Text(
                  'O doutor Valmir Junior é especialista em dar socos e em ser o dindo do Raul.',
                  style: TextStyle(
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
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'Dr Valmir Junior',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: DesingText(
                              title: 'Especialista em Dar Socos-Torres',
                              titleSize: 60),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 90,
                      width: 90,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/jr.jpg',
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
