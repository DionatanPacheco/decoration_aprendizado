import 'package:decoration_app/components/text_desing.dart';
import 'package:flutter/material.dart';

class LauroPage extends StatelessWidget {
  const LauroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      const DesingText(title: 'Médico', titleSize: 5),
                      Padding(
                        padding: const EdgeInsets.only(top: 33),
                        child: Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width - 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: DesingText(
                                        title: 'Dr Lauro Silveira',
                                        titleSize: 8),
                                  ),
                                  DesingText(
                                      title: 'Especialista em Churrasco-Torres',
                                      titleSize: 1)
                                ],
                              ),
                              const CircleAvatar(
                                backgroundImage: AssetImage('assets/lauro.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(
                      top: 20, bottom: 20, left: 20, right: 20)),
              Row(
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
                        DesingText(title: '+35 Anos', titleSize: 10)
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
              const DesingText(title: 'Sobre o Doutor', titleSize: 6),
              const Padding(padding: EdgeInsets.only(bottom: 5)),
              const Text(
                'O doutora Lauro Silveira é especialista em Churrasco e em ser o Dindo Ogro do Raul.',
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
                    'maps.jpg',
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
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
