import 'package:flutter/material.dart';
import 'exercises_screen.dart';

class DuringAttackScreen extends StatelessWidget {
  const DuringAttackScreen({Key? key}) : super(key: key);

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
        title: const Text(
          'Ejercicios durante el ataque',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildExerciseListItem(
              context,
              icon: Icons.air,
              title: 'Respiración',
              subtitle: 'Respiración 4-7-8',
              color: Colors.pink[100]!,
            ),
            const SizedBox(height: 12),
            _buildExerciseListItem(
              context,
              icon: Icons.water_drop,
              title: 'Respiración',
              subtitle: 'Respiración con el agua',
              color: Colors.blue[200]!,
            ),
            const SizedBox(height: 12),
            _buildExerciseListItem(
              context,
              icon: Icons.accessibility_new,
              title: 'Posición Corporal',
              subtitle: 'Posicionamiento del cuerpo',
              color: Colors.green[200]!,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseListItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ExercisesScreen(title: title),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 30, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}