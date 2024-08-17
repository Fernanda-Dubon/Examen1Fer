import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> news = [
      {
        "title": "Matricula",
        "description": "Inicio de matrícula este 24 de septiembre",
        "imageUrl": "assets/imagen1.jpg",
      },
      {
        "title": "Semana de la Ciencia",
        "description": "Talleres y conferencias sobre avances científicos.",
        "imageUrl": "assets/imagen2.jpg",
      },
      {
        "title": "Concurso de Innovación",
        "description": "Presenta tu proyecto y gana grandes premios",
        "imageUrl": "assets/imagen3.jpg",
      },
      {
        "title": "Torneo Interuniversitario",
        "description": "Participa en el torneo de fútbol universitario",
        "imageUrl": "assets/imagen4.jpg",
      },
      {
        "title": "Charlas de Emprendimiento",
        "description": "Aprende a lanzar tu propio negocio con expertos.",
        "imageUrl": "assets/imagen5.jpg",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 100, 
                      maxWidth: double.infinity, 
                    ),
                    child: Image.asset(
                      news[index]["imageUrl"]!,
                      fit: BoxFit.contain, 
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    news[index]["title"]!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    news[index]["description"]!,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}