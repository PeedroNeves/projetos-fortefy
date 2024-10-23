import 'package:flutter/material.dart';
import 'screens/aluno.dart';
import 'screens/personal.dart';
import 'screens/start.dart';
//import 'screens/configuracoes_screen.dart';
//import 'screens/chats_screen.dart';

void main() {
  runApp(FortefyApp());
}

final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

class FortefyApp extends StatelessWidget {
  const FortefyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Fortefy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/start': (context) => StartScreen(),
        '/aluno': (context) => AlunoScreen(),
        '/personal': (context) => PersonalScreen(),
      },
    );
  }
}

