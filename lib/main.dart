import 'package:flutter/material.dart';
import 'package:guilherme_miguel_rm94599/pages/home_page.dart';
import 'package:guilherme_miguel_rm94599/providers/eletroposto_provider.dart';
import 'package:provider/provider.dart';

//Guilherme Miguel Dornelas RM 94599
//Vicenzo Castelli RM 93647


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => EletropostoProvider()..listEletroposto(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eletropostos',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 168, 231, 168)
      ),
      home: const Home(),
    );
  }
}