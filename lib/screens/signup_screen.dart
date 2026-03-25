import 'package:flutter/material.dart';
import '../widgets/components.dart';

const String baseUrl =
    "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: fondoGradiente,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),

                Image.network(baseUrl + "logo.png", height: 70),

                const SizedBox(height: 20),

                const Text(
                  "Crear cuenta",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                campo("Username"),
                const SizedBox(height: 15),
                campo("Email"),
                const SizedBox(height: 15),
                campo("Password", isPassword: true),
                const SizedBox(height: 15),
                campo("Confirm Password", isPassword: true),

                const SizedBox(height: 30),

                botonPrincipal("Registrarse", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}