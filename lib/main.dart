import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Pokemon App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Video 2: Variabel List untuk menampung nama-nama Pokemon
  List<String> pokemonList = [
    'Pikachu',
    'Charmander',
    'Bulbasaur',
    'Squirtle',
    'Eevee',
  ];

  @override
  Widget build(BuildContext context) {
    // Video 1: Menyiapkan layout halaman utama
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Pokemon App'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Daftar Pokemon:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            // Menampilkan isi List
            Text(
              pokemonList.join(', '),
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
