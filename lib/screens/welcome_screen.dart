import 'package:flutter/material.dart';
import '../widgets/components.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

const String baseUrl =
    "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: fondoGradiente,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(baseUrl + "logo.png", height: 100),
                const SizedBox(height: 20),

                const Text(
                  "Apple Music",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Tu música sin límites 🎵",
                  style: TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 40),

                botonPrincipal("Login", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                }),

                const SizedBox(height: 15),

                botonSecundario("Sign Up", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignUpScreen()),
                  );
                }),

                const SizedBox(height: 40),

                const Text(
                  "Ximena Reyes 6º I",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}