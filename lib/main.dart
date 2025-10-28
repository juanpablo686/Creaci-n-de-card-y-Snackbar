import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Madrid Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const RealMadridCard(),
    );
  }
}

class RealMadridCard extends StatefulWidget {
  const RealMadridCard({super.key});

  @override
  State<RealMadridCard> createState() => _RealMadridCardState();
}

class _RealMadridCardState extends State<RealMadridCard> {
  // Lista de mensajes de celebración del Real Madrid
  final List<String> _celebrationMessages = [
    '¡Hala Madrid! ¡Y nada más! 🏆',
    '¡15 Champions League! ⚪👑',
    '¡Santiago Bernabéu por siempre! 🏟️',
    '¡Los Blancos son eternos! ⚪✨',
    '¡La Decimoquinta ya es nuestra! 🏆🔥',
    '¡Madridistas hasta la muerte! 💪⚪',
    '¡El mejor club del mundo! 🌍👑',
    '¡Florentino, presidente! 🎩⚪',
    '¡Vinicius, Benzema, Modrić! ⭐⚽',
    '¡Remontadas épicas! 💫🏆',
    '¡La casa blanca domina! 🏠⚪',
    '¡Galácticos del fútbol! ⭐🌟',
  ];

  int _currentMessageIndex = 0;

  void _showSnackBar(BuildContext context) {
    // Cambiar al siguiente mensaje (circular)
    setState(() {
      _currentMessageIndex =
          (_currentMessageIndex + 1) % _celebrationMessages.length;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_celebrationMessages[_currentMessageIndex]),
        backgroundColor: Colors.purple,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        action: SnackBarAction(
          label: '¡VAMOS!',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Madrid'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.purple,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFF5F5F5)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 8,
              shadowColor: Colors.purple.withValues(alpha: 0.3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => _showSnackBar(context),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  width: 300,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Escudo del Real Madrid - imagen real
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.purple.withValues(alpha: 0.3),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://logos-world.net/wp-content/uploads/2020/06/Real-Madrid-Logo.png',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              // Fallback en caso de que no cargue la imagen
                              return Container(
                                width: 120,
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.sports_soccer,
                                  size: 60,
                                  color: Colors.purple,
                                ),
                              );
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                width: 120,
                                height: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.purple,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Real Madrid',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Club de Fútbol',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        '15 Champions League • 36 LaLiga • 20 Copa del Rey\nEl club más exitoso de la historia del fútbol.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.purple.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Toca para celebrar',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
