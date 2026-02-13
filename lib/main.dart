import 'package:flutter/material.dart';

void main() => runApp(const AppFerreteria());

class AppFerreteria extends StatelessWidget {
  const AppFerreteria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Ferreteria el Muela",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false, 
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ferreteria el Muela",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.engineering, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              // Fila 1: Naranja y Amarillo
              Row(
                children: [
                  _buildContainer("Martillos", Colors.orange),
                  const SizedBox(width: 15),
                  _buildContainer("Tornillos", Colors.blue),
                ],
              ),
              // Fila 2: Rosa (Sustituto de Magenta) y Verde
              Row(
                children: [
                  _buildContainer("Pinturas", Colors.red),
                  const SizedBox(width: 15),
                  _buildContainer("Jardinería", Colors.green),
                ],
              ),
              // Fila 3: Azul y Rojo
              Row(
                children: [
                  _buildContainer("Plomería", Colors.purpleAccent),
                  const SizedBox(width: 15),
                  _buildContainer("Eléctrico", Colors.pink),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget personalizado privado (_) para mejor organización
  Widget _buildContainer(String texto, Color color) {
    return Expanded(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(
          child: Text(
            texto,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}