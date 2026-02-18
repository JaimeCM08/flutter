import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  final String title;
  
  const ExercisesScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD4D9B8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen principal
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.blue[100],
                  child: const Icon(Icons.image, size: 100),
                ),
              ),
              const SizedBox(height: 24),
              
              // Descripción
              const Text(
                'Descripción del ejercicio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                '1. Encuentra un lugar tranquilo donde puedas sentarte cómodamente.\n\n'
                '2. Cierra los ojos suavemente y comienza a respirar profundamente.\n\n'
                '3. Inhala por la nariz contando hasta 4.\n\n'
                '4. Mantén el aire contando hasta 7.\n\n'
                '5. Exhala por la boca contando hasta 8.\n\n'
                '6. Repite este ciclo durante 5-10 minutos.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              
              // Botón Iniciar
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    _showExerciseDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Comenzar Ejercicio',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showExerciseDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Iniciando ejercicio'),
        content: const Text('Prepárate para comenzar el ejercicio de respiración...'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // Aquí podrías iniciar un temporizador o una guía paso a paso
            },
            child: const Text('Comenzar'),
          ),
        ],
      ),
    );
  }
}