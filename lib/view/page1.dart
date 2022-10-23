import 'package:decoration_app/components/usual_box.dart';
import 'package:decoration_app/view/page2.dart';
import 'package:decoration_app/view/page3.dart';
import 'package:decoration_app/view/page4.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int ontapNavigatorBar = 0;
  final PageController _pageController = PageController();
  var titlelist = [
    'Dra Maria Eva',
    'Dr Davi Pedroti',
    'Dra Sophia Pedroti',
    'Dr Valmir Junior',
    'Dra Mainara Ramos',
    'Dr Rafael Freitas',
    'Dra Taina Pedroti',
    'Dr Lauro Silveira',
    'Dra Raquel Ferreira'
  ];
  var desclist = [
    'Especialista em Sapequisse\n e Celular',
    'Especialista em Jogos\n e Comilança',
    'Especialista em Dança\n e Bagunça',
    'Especialista em\n Dar socos e em\n ser Dindo do Raul',
    'Especialista em Fazer Torta e\n em ser Dinda da Eva',
    'Especialista em Fazer\n o Churrasco e\n em ser o Ogro\n Dindo da Eva ',
    'Especialista em\n Toc de Limpeza e\n em sem a Dinda da Eva',
    'Especialista em Churrasco e\n ser o Dindo Ogro do Raul',
    'P.H.D em Ser a Manda Chuva'
  ];
  var imglist = [
    'assets/eva.jpg',
    'assets/davi.jpg',
    'assets/soso.jpg',
    'assets/jr.jpg',
    'assets/mai.jpeg',
    'assets/zildo.jpeg',
    'assets/taina.jpeg',
    'assets/lauro.jpg',
    'assets/raquel.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 30, left: 20, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'hello\n      Dr.',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Dionatan Santos Pacheco',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.none),
                    ),
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        child: Image.asset(
                          'assets/foto.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(0)),
                const Text(
                  'Especialista em Dar Trabalho a todo mundo.',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              backgroundColor: Colors.transparent,
                            ),
                            icon: const Icon(Icons.search),
                            onPressed: () {},
                            label: const Text(
                              'Pesquisar Médico',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic),
                            )),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Button(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Icon(Icons.coronavirus,
                                color: Colors.indigoAccent),
                          ),
                          const Text(
                            'Covid-19',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.indigoAccent,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Button(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Icon(Icons.local_hospital,
                                color: Colors.indigoAccent),
                          ),
                          const Text(
                            'Hospital',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.indigoAccent,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Button(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Icon(Icons.medical_services_rounded,
                                color: Colors.indigoAccent),
                          ),
                          const Text(
                            'Ambulância',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.indigoAccent,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          Button(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Icon(Icons.medication_sharp,
                                color: Colors.indigoAccent),
                          ),
                          const Text(
                            'Medicamentos',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.indigoAccent,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Agendas de Hoje',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                    Text(
                      'Ver',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.deepOrange,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(15)),
                SizedBox(
                  height: 150,
                  width: 400,
                  child: UsualBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                                child: Image.asset(
                                  'assets/raul.jpg',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0, left: 10, right: 10, bottom: 25),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Dr Raul Ferreira Pacheco',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Text('Especialista em Mamar',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                            fontStyle: FontStyle.italic,
                                            decoration: TextDecoration.none)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        SizedBox(
                          height: 50,
                          width: 300,
                          child: UsualBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Button(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    minimumSize: const Size(5, 5),
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                child: const Icon(Icons.calendar_month,
                                    color: Colors.black),
                              ),
                              const Text(
                                'Segunda, outubro 22',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.none),
                              ),
                              const Icon(Icons.timer),
                              const Text(
                                '11:00-12:00',
                                style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          )),
                        )
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 25)),
                const Text(
                  'Lista de Médicos',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 150,
                    width: 420,
                    child: UsualBox(
                        child: ListView.builder(
                      itemCount: imglist.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            showDialogFunc(context, imglist[index],
                                titlelist[index], desclist[index]);
                          },
                          child: Card(
                            shadowColor: Colors.grey,
                            child: SingleChildScrollView(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(imglist[index],
                                        fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          titlelist[index],
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration.none),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            desclist[index],
                                            style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                  ),
                ),
              ],
            ),
          ),
          const Page2(),
          const Page3(),
          const Page4(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ontapNavigatorBar,
        onTap: (
          int index,
        ) {
          setState(() {
            ontapNavigatorBar = index;
          });
          _pageController.animateToPage(index,
              curve: Curves.bounceOut,
              duration: const Duration(milliseconds: 500));
        },
        backgroundColor: Colors.blueAccent,
        fixedColor: Colors.blueAccent,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.house),
          ),
          BottomNavigationBarItem(
            label: 'Agenda',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.mark_unread_chat_alt_outlined),
          ),
          BottomNavigationBarItem(
              label: 'Configuração', icon: Icon(Icons.settings))
        ],
      ),
    );
  }
//
//
//
//
//
//
//

  showDialogFunc(contex, img, title, desc) {
    return showDialog(
        context: context,
        builder: (contex) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.only(top: 1),
                width: 600,
                child: SingleChildScrollView(
                  clipBehavior: Clip.antiAlias,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(img,
                            height: 500, width: 500, fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
