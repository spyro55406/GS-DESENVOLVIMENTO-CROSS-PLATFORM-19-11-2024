import 'package:flutter/material.dart';
import 'package:guilherme_miguel_rm94599/providers/eletroposto_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eletropostos')),
      body: Consumer<EletropostoProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
              itemCount:
                  context.read<EletropostoProvider>().eletropostos.length,
              itemBuilder: (context, index) {
                final eletropostos =
                    context.read<EletropostoProvider>().eletropostos;
                return Text(
                    "Id: ${eletropostos[index].id} \n\n Nome: ${eletropostos[index].nome} \n\n Informações: ${eletropostos[index].informacoes} \n\n Endereço: ${eletropostos[index].endereco} \n\n Telefone: ${eletropostos[index].telefone} \n\n Conectores: ${eletropostos[index].getConector()} \n\n -------------------------------------");
              });
        },
      ),
    );
  }
}