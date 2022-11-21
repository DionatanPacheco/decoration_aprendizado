import 'package:decoration_app/view/agenda_form.dart';
import 'package:flutter/material.dart';

import '../model/agenda.dart';
import '../repositories/agenda_repository.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final tabela = AgendaRepository.tabela;
    List<Agenda> selecionada = [];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white38,
          toolbarHeight: 100,
          centerTitle: true,
          title: const Text(
            'Agenda',
            style: TextStyle(fontSize: 40, color: Colors.blue),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.white38,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AgendaForm()));
            },
            label: const Text(
              "Agendar",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            )),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                          child: Text(
                        'Nome Paciente',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      )),
                      SizedBox(
                          child: Text(
                        'Data e Hora\n Telefone',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      )),
                      SizedBox(
                          child: Text(
                        'Nome Medico',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int Agenda) {
                        return InkWell(
                          child: ListTile(
                              selected: selecionada.contains(tabela[Agenda]),
                              selectedTileColor: Colors.indigo[50],
                              contentPadding: const EdgeInsets.only(
                                  top: 5, right: 15, left: 15),
                              onLongPress: () {
                                setState(() {
                                  (selecionada.contains(tabela[Agenda]))
                                      ? selecionada.remove(tabela[Agenda])
                                      : selecionada.add(tabela[Agenda]);
                                });
                              },
                              leading: Column(
                                children: [
                                  Text(
                                    tabela[Agenda].nome,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 10)),
                                  Text(
                                    tabela[Agenda].email,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              title: Text(tabela[Agenda].datahora,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(tabela[Agenda].telefone,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              trailing: Text(tabela[Agenda].medico,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))),
                        );
                      },
                      separatorBuilder: ((context, index) => const Divider()),
                      itemCount: tabela.length),
                ),
              ],
            ),
          ),
        ));
  }
}
