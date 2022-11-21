import 'package:flutter/material.dart';

class DrawerPag3 extends StatelessWidget {
  const DrawerPag3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: InkWell(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 15),
                child: SizedBox(
                  height: 60,
                  child: Row(
                    children: const [
                      CircleAvatar(
                        child: Icon(Icons.chat),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Mensagens',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.chat),
                    label: const Text(
                      'Pesquisar',
                    ),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Com Estrela'),
              ),
              const ListTile(
                leading: Icon(Icons.save),
                title: Text('Arquivadas'),
              ),
              const ListTile(
                leading: Icon(Icons.block),
                title: Text('Spam e bloqueadas'),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                leading: Icon(Icons.computer),
                title: Text('Pareamento de dispositivos'),
              ),
              const ListTile(
                leading: Icon(Icons.dark_mode),
                title: Text('Escolher tema'),
              ),
              const ListTile(
                leading: Icon(Icons.mark_as_unread),
                title: Text('Marcar todas como lidas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
