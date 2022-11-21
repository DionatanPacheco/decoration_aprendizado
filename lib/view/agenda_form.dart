import 'package:flutter/material.dart';

class AgendaForm extends StatelessWidget {
  const AgendaForm({super.key});

  Widget fieldName() {
    return TextFormField(
      decoration:
          const InputDecoration(labelText: 'Nome:', hintText: 'Nome Completo'),
    );
  }

  Widget fieldData() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'Data e hora:', hintText: 'dd/mm/aa - hh:mm'),
    );
  }

  Widget fieldEmail() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: 'E-mail:', hintText: 'nome@provedor.com'),
    );
  }

  Widget fieldPhone() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Telefone:', hintText: '(51)9 9999 9999'),
    );
  }

  Widget fieldMedico() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Medico:'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.save_as_outlined))
        ],
        title: const Text(
          'Cadastro de Agenda',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            fieldName(),
            fieldData(),
            fieldEmail(),
            fieldPhone(),
            fieldMedico()
          ],
        ),
      ),
    );
  }
}
