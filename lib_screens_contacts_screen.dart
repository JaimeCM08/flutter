import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

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
          'Contactos',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Contactos Personales',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildContactItem(
            name: 'Mamá',
            tag: 'Favorito',
            avatar: 'M',
            color: Colors.blue,
          ),
          _buildContactItem(
            name: 'Hermana/o',
            tag: 'Contacto',
            avatar: 'H',
            color: Colors.purple,
          ),
          _buildContactItem(
            name: 'Cuñada/o',
            tag: 'Contacto',
            avatar: 'C',
            color: Colors.orange,
          ),
          _buildContactItem(
            name: 'Luis Andrés',
            tag: 'Contacto',
            avatar: 'L',
            color: Colors.green,
          ),
          _buildContactItem(
            name: 'Sobrinas',
            tag: 'Contacto',
            avatar: 'S',
            color: Colors.pink,
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem({
    required String name,
    required String tag,
    required String avatar,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: Text(
              avatar,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: tag == 'Favorito' ? Colors.orange[200] : Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tag,
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}